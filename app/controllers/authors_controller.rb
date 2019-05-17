class AuthorsController < ApplicationController
  def index
    authors_paginated = Author.all.page(params[:page]).per(params[:per])
    render json: AuthorSerializer.new(authors_paginated, serialize_options(authors_paginated)).serialized_json
  end

  def show
    @author = Author.find(params['id'])
    render json: AuthorSerializer.new(@author, serialize_options).serialized_json
  end
end
