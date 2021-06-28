# frozen_string_literal: true

class TripsController < ApplicationController
  def index
    cities = Trip.all
    json_response(cities)
  end

  def show
    city = Trip.find(params[:id])
    json_response(city)
  end
end
