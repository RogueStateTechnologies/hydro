# frozen_string_literal: true

class NutrientsController < ApplicationController

  def index
    @nutrients = Nutrient.all
  end

  def show; end

  def new; end

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

  def nutrient_params
    params.require(:nutrient).permit(:name, :plan_id, :phase_id, :amount_per_feeding)
  end

  def find_or_new_nutrient
    @nutrient = params[:id] ? Nutrient.find(params[:id]) : Nutrient.new
  end
end
