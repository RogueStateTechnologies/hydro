# frozen_string_literal: true

class PlansController < ApplicationController
  before_action :find_crop, except: :index
  before_action :find_or_new_plan, except: :index

  def index
    @plans = Plan.all
  end

  def show; end

  def new; end

  def create
    @plan = @crop.plan.new(plan_params)
    if @plan.save
      render "show", flash: { notice: "Plan created" }
    else
      render "new", flash: { notice: "ERROR: Creation Failed!" }
    end
  end

  def update
    if @plan.update(plan_params)
      render "show", flash: { notice: "Plant Updated" }
    else 
      render "update", flash: { notice: "Update Failed" }
    end
  end

  def delete
    if @plan.delete
      render "index", flash: { notice: "Plan Deleted" }
    else
      render "show", flash: { notice: "Unable to Delete" }
    end
  end

  private

  def plan_params
    params.permit(:name, :description, :crop_id)
  end

  def find_crop
    @crop = Crop.find(params[:crop_id])
  end

  def find_or_new_plan
    @plan = params[:id] ? @crop.plans.find(params[:id]) : @crop.plans.new
  end
end
