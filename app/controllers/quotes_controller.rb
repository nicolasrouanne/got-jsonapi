class QuotesController < ApplicationController
  def index
    quotes = Quote.all
    render json: QuoteSerializer.new(quotes).serialized_json
  end

  def show
    @quote = Quote.find(params['id'])
    render json: QuoteSerializer.new(@quote).serialized_json
  end
end
