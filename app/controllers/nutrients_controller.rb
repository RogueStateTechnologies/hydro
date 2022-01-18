class NutrientsController < ApplicationController
  def create
    @nutrient = Nutrient.create(nutrient_params)
  end

  private

  def nutrient_params
    params.permit( :name )
  end
end
