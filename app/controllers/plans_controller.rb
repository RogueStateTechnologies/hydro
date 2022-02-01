# frozen_string_literal: true

class PlansController < ApplicationController
  def create
    @plan = Plan.create(plan_params)
  end

  private

  def plan_params
    params.permit(:name, :description, :crop_id)
  end
end
