# frozen_string_literal: true

class HealthReportsController < ApplicationController
  before_action :find_plant
  before_action :find_or_new_report, except: :index

  def index
    @reports = HealthReport.all
  end

  def show; end

  def new; end

  def create
    @health_report = @plant.health_reports.new(report_params)
    if @health_report.save
      render "show"
    else 
      render "new"
    end
  end

  def edit; end

  def update
    if @report.update(report_params)
      render "show"
    else
      render "edit"
    end
  end

  def destroy
    if @report.delete
      render "index"
    else
      redirect_to @report
    end
  end

  private 

  def report_params
    params.require(:health_report).permit(:height_in_centimeters, :light_exposure, :average_air_temp, :ph, :root_health, :diagnosis, :plant_id, :image)
  end

  def find_or_new_report
    @report = params[:id] ? HealthReport.find(params[:id]) : HealthReport.new
  end

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end
end
