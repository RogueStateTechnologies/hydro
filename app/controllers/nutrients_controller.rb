# frozen_string_literal: true

class NutrientsController < ApplicationController
  before_action :find_nutrient, except: [:index, :new, :create]

  def index
    @nutrients = Nutrients.all
  end

  def show
    @nutrients
  end

  def new
    @nutrients = Nutrient.new
  end

  def create
    @nutrient = Nutrient.create(nutrient_params)
  end

  def update
    @nutrient.update(nutrient_params)
  end

  def delete
    @nutrient.delete
  end

  private

  def find_nutrient 
    @nutrient = Nutrient.find(params[:id])
  end

  def nutrient_params
    params.require(:nutrient).permit(:name, :plan_id, :phase_id, :amount_per_feeding)
  end
end
