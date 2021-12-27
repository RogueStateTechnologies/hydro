class PlantsController < ApplicationController

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    Plant.create(plant_params)
  end

  private

  def plant_params
    params.permit( :crop, :start_date, :grow_medium)
  end
end
