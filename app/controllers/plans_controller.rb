# frozen_string_literal: true

class PlansController < ApplicationController
  before_action :find_crop, except: :index
  before_action :find_or_new_plan, except: [:index, :create]

  def index
    @plans = Plan.all
  end

  def show; end

  def new; end

  def create
    @plan = @crop.plan.new(plan_params)
    if @plan.save
      redirect_to crop_path(@crop), flash: { notice: "Plan created" }
    end
  end

  def update
    @plan.update(plan_params)
  end

  def delete
    @plan.delete
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :description, :crop_id)
  end

  def find_crop
    @crop = Crop.find(params[:crop_id])
  end

  def find_or_new_plan
    @plan = params[:id] ? @crop.plans.find(params[:id]) : @crop.plans.new
  end
end
