# frozen_string_literal: true

class HarvestReportsController < ApplicationController
  before_action :find_plant
  before_action :find_or_new_harvest, except: :index
  def index
    @harvests = @plant.harvest_reports
  end

  def show; end

  def new; end
  
  def create
    @harvest = @plant.harvest_reports.new(harvest_params)
    if @harvest.save
      redirect_to timeline_plant_path(@plant)
    else
      render "new"
    end
  end

  def update
    if @harvest.update(harvest_params)
      redirect_to @plant
    else
      render "update"
    end
  end

  def delete
    if @harvest.delete
      redirect_to @plant
    else
      redirect_to @harvest
    end
  end

  private

  def harvest_params
    params.permit(:height_in_centimeters, :weight_wet_in_grams, :weight_dry_in_grams, :total_wattage_used, :total_water_used_in_milieters, :water_per_gram_in_milileters, :wattage_per_gram, :plant_id)
  end

  def find_or_new_harvest
    @harvest = params[:id] ? HarvestReport.find(params[:id]) : HarvestReport.new
  end

  def find_plant
    @plant = Plant.find(params[:plant_id])
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
