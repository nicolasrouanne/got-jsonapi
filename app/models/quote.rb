class Quote < ApplicationRecord
  attr_reader :title, :content
  belongs_to :author
end
