# frozen_string_literal: true

class PlantsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :find_user
  before_action :find_plant, except: :index
  skip_before_action :verify_authenticity_token

  def index
    @plants = @user.plants.all
  end

  def show
    @plant
  end
  
  def new
    @plant = Plant.new
  end

  def create
    @plant = @user.plants.create(plant_params)
    # mail = NotifierMailer.welcome(@user)
    # mail.deliver_now
    redirect_to user_plant_path(@user, @plant)
  end

  private
  def find_plant
    @plant = Plant.find(params[:id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def plant_params
    params.require(:plant).permit(:user_id, 
                                  :crop_id, 
                                  :start_date, 
                                  :variant_id, 
                                  :medium_id, 
                                  :plan_id, 
                                  :phase_id)
  end
end
