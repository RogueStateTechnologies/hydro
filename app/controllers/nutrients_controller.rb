# frozen_string_literal: true

class NutrientsController < ApplicationController
  before_action :find_crop
  before_action :find_or_new_nutrient, except: :index

  def index
    @nutrients = Nutrient.where( crop_id: @crop.id)
  end

  def show; end

  def new; end

  def create
    @nutrient = Nutrient.new(nutrient_params)
    if @nutrient.save
      render "show"
    else
      render "new"
    end
  end

  def edit; end

  def update
    if @nutrient.update(nutrient_params)
      render "show"
    else
      render "edit"
    end
  end

  def destroy
    if @nutrient.delete
      render "index"
    else
      render "show"
    end
  end

  private

  def find_crop
    @crop = Crop.find(params[:crop_id])
  end

  def nutrient_params
    params.require(:nutrient).permit(:name, :crop_id, :phase_id, :manufacturer, :composition)
  end

  def find_or_new_nutrient
    @nutrient = params[:id] ? Nutrient.find(params[:id]) : Nutrient.new
  end
end
