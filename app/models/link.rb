require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

end

DataMapper.setup(:default, ENV['postgres://rkowcunlmazqey:oVo-DufuuvFBT57coyRbuvuVA1@ec2-54-243-249-154.compute-1.amazonaws.com:5432/dabbn3d1s0van9'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
