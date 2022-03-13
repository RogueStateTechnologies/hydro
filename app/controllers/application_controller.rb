# frozen_string_literal: true

class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  private

  #finders
  
  def find_crop
    @crop = Crop.find(crop_params[:id])
  end

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_harvest_report
    @harvest_report = HarvestReport.find(harvest_params[:harvest_report_id])
  end

  def find_health_report
    @health_report = HealthReport.find(params[:health_report])
  end

  def find_media
    @media = Medium.find(params[:id])
  end

  def find_nutrient 
    @nutrient = Nutrient.find(params[:id])
  end

  def find_phase
    @phase = Phase.find(params[:id])
  end

  def find_plan
    @plan = Plan.find(params[:id])
  end

  def find_variant
    @variant = Variant.find(params[:id])
  end

  # params

  def crop_params
    params.require( :crop)
          .permit(  :id,
                    :name,
                    :description)
  end

  def harvest_report_params
    params.require( :harvest_report)
          .permit(  :height,
                    :weight_wet_in_grams,
                    :weight_dry_in_grams,
                    :total_wattage_used,
                    :total_water_used_in_milieters,
                    :water_per_gram_in_militeres,
                    :wattage_per_gram)
  end

  def health_report_params
    params.require( :health_report)
          .permit(  :plant_image, 
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

  def medium_params
    params.require( :medium)
          .permit(  :name, 
                    :description)
  end

  def nutrient_params
    params.require( :nutrient)
          .permit(  :name, 
                    :plan_id, 
                    :phase_id, 
                    :amount_per_feeding)
  end

  def phase_params
    params.require( :phase)
          .permit(  :name, 
                    :duration, 
                    :plan_id, 
                    :description, 
                    :feed_frequency)
  end

  def plan_params
    params.require( :plan)
          .permit(  :name, 
                    :description, 
                    :crop_id)
  end

  def plant_params
    params.require( :plant)
          .permit(  :user_id, 
                    :crop_id, 
                    :start_date, 
                    :variant_id, 
                    :medium_id, 
                    :plan_id, 
                    :phase_id)
  end

  def variant_params
    params.require( :variant)
          .permit(  :name, 
                    :description, 
                    :crop_id)
  end

  #redirect method

  def after_sign_in_path_for(resource)
    user_plants_path(current_user) # your path
  end


end
