# frozen_string_literal: true

class HarvestReportsController < ApplicationController
  before_action :find_plant
  before_action :find_or_new_harvest, except: :index
  
  def index
    @harvest_reports = @plant.harvest_reports
  end

  def show; end

  def new; end
  
  def create
    @harvest_report = @plant.harvest_reports.create(harvest_report_params)
    redirect_to user_plant_path(current_user, @plant)
  end

  def update
    @harvest_report.update(harvest_report_params)
  end

  def delete
    @harvest_report.delete
  end

  private

  def harvest_report_params()
    params.require(:harvest_report).permit()
  end

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end

  def find_or_new_harvest
    @harvest = params[:id] ? HarvestReport.find(params[:id]) : HarvestReport.new
  end
end
