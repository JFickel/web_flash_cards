require 'bcrypt'
class User < ActiveRecord::Base
  has_many :rounds
  
  validates :password, :confirmation => true
  # Remember to create a migration!

  def password=(new_password)
    self.password_hash = BCrypt::Password.create(new_password)
  end

  def password
    BCrypt::Password.new(password_hash)
  end

  def self.authenticate(email, user_password)
    user = User.find_by_email(email)
    return nil if user == nil
    user.password = user_password
    user if @password == user.password_hash
    user
  end
end
