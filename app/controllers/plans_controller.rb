class PlansController < ApplicationController
  def create
    @plan = Plan.create(plan_params)
  end

  private

  def plan_params
    params.permit( :name )
  end
end
