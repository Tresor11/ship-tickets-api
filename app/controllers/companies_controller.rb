# frozen_string_literal: true

class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    json_response(@companies)
  end

  def show
    company = Company.find(params[:id])
    json_response(company)
  end
end
