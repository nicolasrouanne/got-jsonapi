class QuotesController < ApplicationController
  def index
    quotes_paginated = Quote.all.page(params[:page]).per(params[:per])
    render json: QuoteSerializer.new(quotes_paginated, serialize_options(quotes_paginated)).serialized_json
  end

  def show
    @quote = Quote.find(params['id'])
    render json: QuoteSerializer.new(@quote, serialize_options).serialized_json
  end
end
