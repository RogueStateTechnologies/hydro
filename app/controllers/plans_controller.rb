# frozen_string_literal: true

class PlansController < ApplicationController
  before_action :find_plan, except: [:index, :new, :create]

  def index
    @plans = Plan.all
  end

  def show
    @plan
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.create(plan_params)
  end

  def update
    @plan.update(plan_params)
  end

  def delete
    @plan.delete
  end
end
