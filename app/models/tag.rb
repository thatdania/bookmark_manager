require 'data_mapper'
require 'dm-postgres-adapter'

class Tag

include DataMapper::Resource

#belongs_to :link, :key => true

end
