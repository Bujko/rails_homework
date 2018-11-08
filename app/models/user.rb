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

  def User.authenticate(email, pass)
    user = User.where(email: email).first
    user && user.authenticated?(pass) ? user : nil
  end

  def authenticated?(pass)
    self.password == User.encrypt(pass, self.salt)
  end
end
