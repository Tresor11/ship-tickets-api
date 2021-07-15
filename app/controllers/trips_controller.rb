# frozen_string_literal: true

class TripsController < ApplicationController
  def index
    @trips = Trip.all.includes(:city, :company, :ship)
    json_response(@trips)
  end

  def show
    trip = Trip.find(params[:id])
    json_response(trip)
  end
end
