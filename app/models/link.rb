require './app/data_mapper_setup'

  include DataMapper::Resource

  property :id,     Serial
  property :title,  String
  property :url,    String

end
<<<<<<< HEAD
#test line
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")

DataMapper.finalize
DataMapper.auto_upgrade!
=======

# DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
#
# DataMapper.finalize
# DataMapper.auto_upgrade!
>>>>>>> 1d65c25797a0cc47b2fa0923a60bf07244be3c54
