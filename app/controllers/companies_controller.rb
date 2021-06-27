# frozen_string_literal: true

class CompaniesController < ApplicationController
  def index
    cities = Company.all
    json_response(cities)
  end

  def show
    city = Company.find(params[:id])
    json_response(city)
  end
end
