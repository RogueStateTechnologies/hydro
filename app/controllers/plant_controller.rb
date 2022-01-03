class PlantsController < ApplicationController

  def index
    @journal = PlantJournal.all
  end

  def show
    @plant_journal = PlantJournal.find(params[:id])
  end

  def create
    PlantJournal.create(plant_journal_params)
  end

  private

  def plant_journal_params
    params.permit( :crop, :start_date, :grow_medium)
  end
end
