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
      render "show"
    else
      render "new"
    end
  end

  def edit; end

  def update
    if @harvest.update(harvest_params)
      render "show"
    else
      render "edit"
    end
  end

  def destroy
    if @harvest.delete
      render "index"
    else
      render "show"
    end
  end

  private

  def harvest_params
    params.require(:harvest_report).permit(:height_in_centimeters, :amount_harvested, :plant_id)
  end

  def find_or_new_harvest
    @harvest = params[:id] ? HarvestReport.find(params[:id]) : HarvestReport.new
  end

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end
end
