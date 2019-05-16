class Author < ApplicationRecord
  attr_reader :first_name, :last_name, :alias
  has_many :quotes
end
