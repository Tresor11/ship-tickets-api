# frozen_string_literal: true

class TripController < ApplicationController
  def index
    cities = Trip.all
    json_response(cities)
  end

  def show
    city = Trip.find(params[:id])
    json_response(city)
  end
end
