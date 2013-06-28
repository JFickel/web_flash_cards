require 'bcrypt'
class User < ActiveRecord::Base
  validates :password, :confirmation => true
  # Remember to create a migration!

  def password=(new_password)
    self.password_hash = BCrypt::Password.create(new_password)
  end

  def password
    BCrypt::Password.new(password_hash)
  end
end
