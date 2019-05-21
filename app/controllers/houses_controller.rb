class HousesController < ApplicationController
  before_action :check_include_params

  def index
    houses = House.all
    options = {include: include}.merge(serialize_options(houses))
    render json: HouseSerializer.new(houses, options).serialized_json
  end

  def show
    @house = House.find(params['id'])
    options = {include: include}.merge(serialize_options)
    render json: HouseSerializer.new(@house, options).serialized_json
  end
  
  def permitted_relationships
    %i[characters]
  end
end
