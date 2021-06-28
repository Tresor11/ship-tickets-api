class FrequenciesController < ApplicationController
  def index
    cities = Frequency.all
    json_response(cities)
  end

  def show
    city = Frequency.find(params[:id])
    json_response(city)
  end
end
