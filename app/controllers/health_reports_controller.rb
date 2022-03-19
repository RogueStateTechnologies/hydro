# frozen_string_literal: true

class HealthReportsController < ApplicationController
  before_action :find_plant

  def index
    @health_reports = HealthReport.all
  end

  def show
    @health_report
  end

  def new
    @health_report = HealthReport.new
  end

  def create
    @health_report = @plant.health_reports.create(health_report_params)
    redirect_to user_plants_path(current_user, @plant)
  end

  def update
    @health_report.update(health_report_params)
  end

  def delete
    @health_report.delete
  end

  private 

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end
end
