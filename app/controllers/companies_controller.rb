

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
    @company = Company.find(params[:id])
    render json: @company
  end

  def new
    @company = Company.new
    render json: @company 
  end
  
  def create
    @company = Company.new(:name => params[:name], :logo => params[:logo], :mainurl => params[:mainurl], :banner_dashboard => params[:banner_dashboard], :banner_cms => params[:banner_cms], :banner_solicitudes => params[:banner_solicitudes], :sv_cesantias => params[:sv_cesantias], :user => params[:user], :password => params[:password], :active => params[:active])
    
    if @company.save
      render json: @company, status: :ok
    else
       render json: @company.errors, status: :no_content
    end
  end
  
  
  # PUT /companies/1
  # PUT /companies/1.json
  def update
    @company = Company.find(params[:id])
    # puts params[:name]
    # puts @company.name
    
    # @company.name = params[:name]
    # save

    if @company.update_attributes(:name => params[:name], :logo => params[:logo], :mainurl => params[:mainurl], :banner_dashboard => params[:banner_dashboard], :banner_cms => params[:banner_cms], :banner_solicitudes => params[:banner_solicitudes], :sv_cesantias => params[:sv_cesantias], :user => params[:user], :password => params[:password], :active => params[:active])
      render json: @company, status: :ok 
    else
      render json: {company: @company.errors, status: :unprocessable_entity}
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    
    render json: @company, status: :ok 
  end

end

