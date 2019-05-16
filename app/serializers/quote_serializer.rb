class QuoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content
end
