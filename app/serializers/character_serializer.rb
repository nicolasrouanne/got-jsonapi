class CharacterSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :died
  belongs_to :house
end
