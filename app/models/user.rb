require 'bcrypt'

class User

include DataMapper::Resource

  property :id,          Serial
  property :first_name,  String
  property :surname,     String
  property :email,       String

  property :password_digest, Text, length: 60

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

end
