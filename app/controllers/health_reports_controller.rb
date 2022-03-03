# frozen_string_literal: true

class HealthReportsController < ApplicationController
  before_action [:find_plant, :find_plant_user], except: [:index, :new, :create]
  skip_before_action :verify_authenticity_token

  def index
    @health_reports = HealthReport.all
  end

  def show
    @health_report
  end

  def new
    @health_report = HealthReport.new
  end

  def create
    @health_report = @plant.health_reports.create(health_report_params)
    redirect_to user_plants_path(@user, @plant)
  end

  def update
    @health_report.update(health_report_params)
  end

  def delete
    @health_report.delete
  end

  private

  def find_health_report
    @health_report = HealthReport.find(params[:health_report])
  end

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end

  def find_plant_user
    @user = @plant.user
  end

  def health_report_params
    params.require(:health_report).permit(:plant_image, 
                                          :height_in_centimeters, 
                                          :air_humidity, 
                                          :light_schedule, 
                                          :day_air_temp,
                                          :night_air_temp, 
                                          :watering_volume_per_day, 
                                          :container_size, 
                                          :ph, 
                                          :diagnosis, 
                                          :comments)
  end
end
