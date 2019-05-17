class AuthorsController < ApplicationController
  def index
    authors = Author.all
    render json: AuthorSerializer.new(authors).serialized_json
  end

  def show
    @author = Author.find(params['id'])
    render json: AuthorSerializer.new(@author).serialized_json
  end
end
