class AuthorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :alias
  has_many :quotes
end
