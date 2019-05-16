class QuoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content
  belongs_to :author
end
