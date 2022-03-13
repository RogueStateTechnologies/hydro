# frozen_string_literal: true

class NutrientsController < ApplicationController
  before_action :find_nutrient, except: [:index, :new, :create]

  def index
    @nutrients = Nutrient.all
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
end
