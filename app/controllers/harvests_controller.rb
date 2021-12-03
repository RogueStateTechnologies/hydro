class HarvestsController < ApplicationController

  def index
    @harvests = Harvest.all
    @num_columns = @harvest.size
    @num_plants = @harvests.map(&:num_plants)
  end

  def new
    @harvest = Harvest.new
  end

  def create
    @harvest = Harvest.new(harvest_params) 
    if @harvest.save
      redirect_to harvests_path, flash: {notice: "Harvest - #{@harvest.date} created"}
    else 
      render action: :new
    end
  end

  private 

  def harvest_params
  end
end
