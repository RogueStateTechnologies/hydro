# frozen_string_literal: true

class PlantsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :find_user

  def index
    @plants = @user.plants.all
  end

  def show
    @plant = @user.plant.find(params[:id])
  end

  def create
    @plant = @user.plants.create(plant_params)
    PlantMailer.new_plant_email
    redirect_to @plant
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def plant_params
    params.permit( :user_id, :crop_id, :start_date, :variant_id, :medium_id, :plan_id, :phase_id)
  end
end
