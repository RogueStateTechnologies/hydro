# frozen_string_literal: true

class CropsController < ApplicationController
  before_action :find_crop, except: [:index, :create]

  def index
    @crops = Crop.all
  end

  def show; end

  def new; end

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
    @crop = params[:id] ? Crop.find(params[:id]) : Crop.new
  end

  def crop_params
    params.require(:crop).permit(:name, :description)
  end

end
