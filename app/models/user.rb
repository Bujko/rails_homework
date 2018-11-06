class User < ApplicationRecord
  before_save :encrypt_password
  #attr_accessor :password

  def User.encrypt(pass, salt)
    Digest::SHA1.hexdigest(salt+pass)
  end

  def encrypt_password
    return if password.blank?
    if new_record?
      self.salt = SecureRandom.base64 8
    end
    self.password = User.encrypt(password,salt)
  end

end
