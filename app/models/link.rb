require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

end

DataMapper.setup(:default, ENV['postgres://vzqscsjqkbfcqw:TEw1AIMJXL336akVV4Wd_3U-xA@ec2-54-243-203-232.compute-1.amazonaws.com:5432/dl6hgb3mqvcst'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
