require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id,     Serial
  property :title,  String
  property :url,    String

end

DataMapper.setup(:default, ENV['postgres://gjggggvzfejotb:NYihM5K-vSxL6Fx6MDkkddXxDy@ec2-23-21-219-12.compute-1.amazonaws.com:5432/deq4t69dshtpe7'] "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")

DataMapper.finalize
DataMapper.auto_upgrade!
