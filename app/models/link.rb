<<<<<<< HEAD
=======
require './app/data_mapper_setup'
>>>>>>> f8ee5bc15ea9400fbcb0d83b3942cf18ca44354e
require 'data_mapper'
require 'dm-postgres-adapter'

class Link

<<<<<<< HEAD
include DataMapper::Resource
=======
  include DataMapper::Resource
>>>>>>> f8ee5bc15ea9400fbcb0d83b3942cf18ca44354e

  property :id,     Serial
  property :title,  String
  property :url,    String
end
<<<<<<< HEAD
=======

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")

DataMapper.finalize
DataMapper.auto_upgrade!
>>>>>>> f8ee5bc15ea9400fbcb0d83b3942cf18ca44354e
