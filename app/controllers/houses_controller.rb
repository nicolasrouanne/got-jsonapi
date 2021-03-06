class HousesController < ApplicationController
  before_action :check_include_params

  def index
    houses_paginated = House.all.page(params[:page]).per(params[:per])
    options = {include: include, fields: fields}.merge(serialize_options(houses_paginated))
    render json: HouseSerializer.new(houses_paginated, options).serialized_json
  end

  def show
    @house = House.find(params['id'])
    options = {include: include, fields: fields}.merge(serialize_options)
    render json: HouseSerializer.new(@house, options).serialized_json
  end

  def permitted_relationships
    %i[characters]
  end
end
