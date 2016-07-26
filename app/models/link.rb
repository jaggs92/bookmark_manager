require './app/data_mapper_setup'

class Link
  include DataMapper::Resource

  has n, :tags, through: Resource

  property :id, Serial
  property :title, String
  property :url, String

end
<<<<<<< HEAD

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
=======
>>>>>>> cc1a99524b2f82b001e0c19860564df2511cd295
