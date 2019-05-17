class QuotesController < ApplicationController
  before_action :check_include_params

  def index
    quotes_paginated = Quote.all.page(params[:page]).per(params[:per])
    options = {include: include, fields: fields}.merge(serialize_options(quotes_paginated))
    render json: QuoteSerializer.new(quotes_paginated, options).serialized_json
  end

  def show
    @quote = Quote.find(params['id'])
    options = {include: include, fields: fields}.merge(serialize_options)
    render json: QuoteSerializer.new(@quote, options).serialized_json
  end

  def permitted_relationships
    %i[author]
  end
end
