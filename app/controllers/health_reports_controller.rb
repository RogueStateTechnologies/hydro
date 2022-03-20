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
      redirect_to user_plant_path(current_user, @plant)
    else 
      render "new"
    end
  end

  def update
    if @report.update(report_params)
      redirect_to @report
    else
      render "update"
    end
  end

  def delete
    if @report.delete
      redirect_to @plant
    else
      redirect_to @report
    end
  end

  private 

  def report_params
    params.require(:health_report).permit(:height_in_centimeters, :air_humidity, :light_schedule, :day_air_temp, :night_air_temp, :watering_volume_per_day, :container_size, :ph, :diagnosis, :comments, :plant_id)
  end

  def find_or_new_report
    @report = params[:id] ? HealthReport.find(params[:id]) : HealthReport.new
  end

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end
end
