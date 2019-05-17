class QuotesController < ApplicationController
  def index
    quotes = Quote.all
    render json: QuoteSerializer.new(quotes).serialized_json
  end
end
