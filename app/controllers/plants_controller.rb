# frozen_string_literal: true

class PlantsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :find_plant, except: [:index, :new, :create]


  def index
    @plants = current_user.plants.all
  end

  def show
  end
  
  def new
    @plant = current_user.plants.new
  end

  def create
    @plant = current_user.plants.new(plant_params)
    if @plant.save!
      # NotifierMailer.welcome(@user).deliver_now
      redirect_to user_plant_path(@user, @plant)
    end
  end

  private

  def find_plant
    @plant = current_user.plants.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:user_id, :crop_id, :start_date, :variant_id, :medium_id,
                                  :plan_id, :phase_id)
    end

end
