class FrequenciesController < ApplicationController
  def index
    @frequencies = Frequency.all
    json_response(@frequencies)
  end

  def show
    frequency = Frequency.find(params[:id])
    json_response(frequency)
  end
end
