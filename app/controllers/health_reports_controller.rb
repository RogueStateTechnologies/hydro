# frozen_string_literal: true

class HealthReportsController < ApplicationController
  before_action :find_plant, :find_plant_user
  skip_before_action :verify_authenticity_token
  def create
    @health_report = HealthReport.create(health_report_params)
    redirect_to user_plants_path(@user, @plant)
  end

  def new
    @health_report = HealthReport.new
  end

  def show
    @health_report = HealthReport.last
  end

  private

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end

  def find_plant_user
    @user = @plant.user
  end

  def health_report_params
    params.permit(:plant_id, :plant_image, :height_in_centimeters, :air_humidity, :light_schedule, :day_air_temp,
                  :night_air_temp, :watering_volume_per_day, :container_size, :ph, :diagnosis, :comments)
  end
end
