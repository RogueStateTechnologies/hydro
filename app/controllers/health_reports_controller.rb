class HealthReportsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @health_report = HealthReport.create(health_report_params)
  end

  def show
    @health_report = HealthReport.last
  end

  private

  def health_report_params
    params.permit(:plant_id, :plant_image, :height_in_centimeters, :air_humidity, :light_schedule, :day_air_temp, :night_air_temp, :watering_volume_per_day, :container_size, :ph, :diagnosis, :comments)
  end
end
