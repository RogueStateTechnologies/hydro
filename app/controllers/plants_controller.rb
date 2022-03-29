# frozen_string_literal: true

class PlantsController < ApplicationController
  before_action :find_or_new_plant, except: :index

  def index
    @plants = current_user.plants.all
  end

  def show; end
  
  def new; end

  def create
    @plant = current_user.plants.new(plant_params)
    if @plant.save
      render "show", flash: { notice: "Plant Created!"}
      PlantMailer.new_plant_email()
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

  private

  def find_or_new_plant
    @plant = params[:id] ? current_user.plants.find(params[:id]) : current_user.plants.new
  end

  def plant_params
    params.require(:plant).permit(:user_id, :crop_id, :start_date, :variant_id, :medium_id, :plan_id, :phase_id, :next_notification_date, :light_wattage)
    end

end
