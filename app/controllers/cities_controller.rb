# frozen_string_literal: true

class CitiesController < ApplicationController
  def index
    @cities = City.all
    json_response(cities)
  end

  def show
    city = City.find(params[:id])
    json_response(city)
  end
end
