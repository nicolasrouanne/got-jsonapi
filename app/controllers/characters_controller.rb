class CharactersController < ApplicationController
  def index
    characters = Character.all
    render json: CharacterSerializer.new(characters).serialized_json
  end

  def show
    @character = Character.find(params['id'])
    render json: CharacterSerializer.new(@character).serialized_json
  end
end
