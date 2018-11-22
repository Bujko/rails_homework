class User < ApplicationRecord
  has_many :cloths
  has_many :outfits
  has_many :stylist , class_name: 'Outfit'
  before_save :encrypt_password
  attr_accessor :password , :password_confirmation

  # enum usertype: [:user, :stylist]

  validates :name, presence: true
  validates :email, {presence: true, uniqueness: true}
  validates :password, confirmation: true, if: :password_reqired?

  def User.encrypt(pass, salt)
    Digest::SHA1.hexdigest(salt + pass)
  end

  def encrypt_password
    return if password.blank?
    if new_record?
      self.salt = SecureRandom.base64 8
    end
    self.encrypted_password = User.encrypt(password,salt)
  end

  def User.authenticate(email, pass)
    user = User.where(email: email).first
    user && user.authenticated?(pass) ? user : nil
  end

  def authenticated?(pass)
    self.encrypted_password == User.encrypt(pass, self.salt)
  end

  def password_reqired?
    new_record? || !self.password.blank?
  end
end
