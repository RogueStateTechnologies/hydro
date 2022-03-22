# frozen_string_literal: true

class PhasesController < ApplicationController
  before_action :find_or_new_phase, except: :index

  def index
    @phases = Phase.all
  end

  def show; end

  def new; end

  def create
    @phase = Phase.new(phase_params)
    if @phase.save
      render "show"
    else
      render "new"
    end
  end

  def update
    if @phase.update(phase_params)
      render "show"
    else
      render "update"
    end
  end

  def delete
    if @phase.delete
      render "index"
    else 
      render "show"
    end
  end

  private

  def phase_params
    params.permit(:name, :description, :plan_id, :duration, :feed_frequency)
  end
  def find_or_new_phase
    @phase = params[:id] ? Phase.find(params[:id]) : Phase.new
  end
end
