# frozen_string_literal: true

class PlantsController < ApplicationController
  before_action :find_or_new_plant, except: :index
  layout 'show', only: [:show, :schedule, :timeline]

  # CRUD ACTIONS
  def index
    @plants = current_user.plants.all
  end

  def show; end
  
  def new; end

  def create
    @plant = current_user.plants.new(plant_params)
    puts @plant.inspect
    if @plant.save
      render "show", flash: { notice: "Plant Created!"}
    else 
      render "new", flash: { notice: "Unsuccesful"}
    end
  end

  def edit; end

  def update
    if @plant.update(plant_params)
      render "show"
    else
      render "edit"
    end
  end

  def delete
    if @plant.delete
      render "index"
    else
      render "show"
    end
  end

  # NON CRUD ACTIONS

  def schedule; end

  def timeline; end

  private

  def find_or_new_plant
    @plant = params[:id] ? current_user.plants.find(params[:id]) : current_user.plants.new
  end

  def plant_params
    params.require(:plant).permit(:user_id, :crop_id, :start_date, :medium, :plan_id, :phase_id, :light_system)
    end

end
