class HouseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :region, :words, :seat
  has_many :characters
end
