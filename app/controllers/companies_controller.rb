class CompaniesController < ApplicationController
  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all

    render json: @companies
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @companies = Company.find(params[:id])
    render json: @companies
  end

  # Other actions omitted.
end

