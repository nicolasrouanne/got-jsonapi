class CharactersController < ApplicationController
  before_action :check_include_params

  def index
    characters = Character.all
    options = {include: include}.merge(serialize_options(characters))
    render json: CharacterSerializer.new(characters, options).serialized_json
  end

  def show
    @character = Character.find(params['id'])
    options = {include: include}.merge(serialize_options)
    render json: CharacterSerializer.new(@character, options).serialized_json
  end

  def permitted_relationships
    %i[house]
  end
end
