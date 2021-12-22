class PlantsController < ApplicationController

  def index
    @plants = Plant.all
  end

  def new
    
  end
end
