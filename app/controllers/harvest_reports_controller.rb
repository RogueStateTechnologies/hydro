# frozen_string_literal: true

class HarvestReportsController < ApplicationController
  before_action :find_plant, :find_plant_user, except: :index

  def index
    @harvest_reports = @plant.harvest_reports
  end

  def show
    @harvest_report
  end

  def new 
    @harvest_report = @plant.harvest_reports.new
  end
  
  def create
    @harvest_report = @plant.harvest_reports.create(harvest_report_params)
    redirect_to user_plants_path(@user)
  end

  def update
    @harvest_report.update(harvest_report_params)
  end

  def delete
    @harvest_report.delete
  end
end
