# frozen_string_literal: true

class PlantsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :find_user
  before_action :find_plant, except: [:index, :new, :create]


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
end
