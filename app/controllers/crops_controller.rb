# frozen_string_literal: true

class CropsController < ApplicationController
  before_action :find_or_new_crop, except: :index

  def index
    @crops = Crop.all
  end

  def show; end

  def new; end

  def create
    @crop = Crop.new(crop_params)
    if @crop.save
      redirect_to @crop
    else
      render "new"
    end
  end

  def update
    if @crop.update(crop_params)
      redirect_to @crop
    else
      render "update"
    end
  end

  def delete
    if @crop.delete
      redirect_to "index"
    else
      redirect_to @crop
    end
  end

  private

  def find_or_new_crop
    @crop = params[:id] ? Crop.find(params[:id]) : Crop.new
  end

  def crop_params
    params.require(:crop).permit(:name, :description)
  end

end
