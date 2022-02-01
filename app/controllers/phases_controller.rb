# frozen_string_literal: true

class PhasesController < ApplicationController
  def create
    @phase = phase.create(phase_params)
  end

  private

  def phase_params
    params.permit(:name, :duration, :plan_id, :description)
  end
end
