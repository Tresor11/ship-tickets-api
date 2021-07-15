# frozen_string_literal: true

class ShipsController < ApplicationController
  def index
    @ships = Ship.all
    json_response(@ships)
  end

  def show
    ship = Ship.find(params[:id])
    json_response(ship)
  end
end
