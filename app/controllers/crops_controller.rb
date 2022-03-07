# frozen_string_literal: true

class CropsController < ApplicationController
  before_action :find_crop, except: [:index, :new, :create]

  def index
    @crops = Crop.all
  end

  def show
    @crop
  end

  def new 
    @crop = Crop.new
  end

  def create
    @crop = Crop.create(crop_params)
    redirect_to crops_path()
  end

  def update
    @crop.update
  end

  def delete
    @crop.delete
  end

  private

  def find_crop
    @crop = Crop.find(crop_params[:id])
  end

  def crop_params
    params.require(:crop).permit(:id,
                                 :name,
                                 :description)
  end
end
