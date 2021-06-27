# frozen_string_literal: true

class ShipsController < ApplicationController
  def index
    cities = Ship.all
    json_response(cities)
  end

  def show
    city = Ship.find(params[:id])
    json_response(city)
  end
end
