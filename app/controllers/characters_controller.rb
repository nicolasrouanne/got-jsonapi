class CharactersController < ApplicationController
  before_action :check_include_params

  def index
    characters_paginated = Character.all.page(params[:page]).per(params[:per])
    options = {include: include}.merge(serialize_options(characters_paginated))
    render json: CharacterSerializer.new(characters_paginated, options).serialized_json
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
