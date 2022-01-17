class PlantsController < ApplicationController

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    @plant = Plant.create(plant_params)
    redirect_to @plant
  end

  private

  def plant_params
    params.permit( :crop_id, :start_date, :variant_id, :medium_id, :plan_id, :phase_id)
  end
end
