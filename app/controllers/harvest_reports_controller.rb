# frozen_string_literal: true

class HarvestReportsController < ApplicationController
  before_action :find_plant, :find_plant_user


  def new 
    @harvest_report = @plant.harvest_reports.new
  end
  
  def create
    @harvest_report = @plant.harvest_reports.create(harvest_report_params)
    redirect_to user_plants_path(@user, @plant)
  end

  private

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end

  def find_plant_user
    @user = @plant.user
  end

  def harvest_report_params
    params.require(:harvest_report).permit(:height,
                                           :weight_wet_in_grams,
                                           :weight_dry_in_grams,
                                           :total_wattage_used,
                                           :total_water_used_in_milieters,
                                           :water_per_gram_in_militeres,
                                           :wattage_per_gram)
  end
end
