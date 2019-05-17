class AuthorsController < ApplicationController
  before_action :check_include_params

  def index
    authors_paginated = Author.all.page(params[:page]).per(params[:per])
    options = {include: include}.merge(serialize_options(authors_paginated))
    render json: AuthorSerializer.new(authors_paginated, options).serialized_json
  end

  def show
    @author = Author.find(params['id'])
    options = {include: include}.merge(serialize_options)
    render json: AuthorSerializer.new(@author, options).serialized_json
  end

  def permitted_relationships
    %i[quotes]
  end
end
