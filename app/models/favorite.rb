class Favorite
  include Mongoid::Document

  field :url
  validates_uniqueness_of :url
end
