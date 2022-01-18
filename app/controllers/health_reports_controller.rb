class HealthReportsController < ApplicationController
  def create
    @health_report = HealthReport.create(health_report_params)
  end

  private

  def health_report_params
    params.permit( :name )
  end
end
