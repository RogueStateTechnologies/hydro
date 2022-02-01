# frozen_string_literal: true

class HarvestReportsController < ApplicationController
  def create
    @harvest_report = HarvestReport.create(harvest_report_params)
  end

  private

  def harvest_report_params
    params.permit(:name)
  end
end
