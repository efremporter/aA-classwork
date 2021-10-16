class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  
  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    if user && user.is_valid_password?
      return user
    end
    nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_valid_password?(password)
    password_object = BCrypt::Password.new(self.password_digest)
    password_object.is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
  end

end
