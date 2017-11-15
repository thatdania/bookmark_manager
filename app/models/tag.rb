
class Tag

include DataMapper::Resource

belongs_to :link, :key => true

end
