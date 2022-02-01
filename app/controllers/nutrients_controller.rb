# frozen_string_literal: true

class NutrientsController < ApplicationController
  def create
    @nutrient = Nutrient.create(nutrient_params)
  end

  private

  def nutrient_params
    params.permit(:name, :plan_id, :phase_id, :amount_per_feeding)
  end
end
