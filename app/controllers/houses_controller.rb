class HousesController < ApplicationController
  def index
    houses = House.all
    render json: HouseSerializer.new(houses).serialized_json
  end

  def show
    @house = House.find(params['id'])
    render json: HouseSerializer.new(@house).serialized_json
  end
end
