# frozen_string_literal: true

class TripsController < ApplicationController
  def index
    @trips = Trip.all.includes(:departure_city, :arrival_city, :company, :ship, :frequency, :departure_day)
    query = {}
    query = trips_search_query(params[:search]) if params[:search]
    json_response(@trips.where(query))
  end

  def show
    trip = Trip.find(params[:id])
    json_response(trip)
  end

  private

  def trips_params
    params.permit(:id, :search)
  end
end
