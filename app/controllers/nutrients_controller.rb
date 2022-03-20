# frozen_string_literal: true

class NutrientsController < ApplicationController
  before_action :find_or_new_nutrient, except: :index

  def index
    @nutrients = Nutrient.all
  end

  def show; end

  def new; end

  def create
    @nutrient = Nutrient.new(nutrient_params)
    if @nutrient.save
      render "index"
    else
      render "new"
    end
  end

  def update
    if @nutrient.update(nutrient_params)
      render "show"
    else
      render "update"
    end
  end

  def delete
    if @nutrient.delete
      render "index"
    else
      render "show"
    end
  end

  private

  def nutrient_params
    params.require(:nutrient).permit(:name, :plan_id, :phase_id, :manufacturer, :composition)
  end

  def find_or_new_nutrient
    @nutrient = params[:id] ? Nutrient.find(params[:id]) : Nutrient.new
  end
end
