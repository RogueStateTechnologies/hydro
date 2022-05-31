# frozen_string_literal: true

class PhasesController < ApplicationController
  before_action :find_crop
  before_action :find_or_new_phase, except: :index
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @phases = Phase.where(crop_id: @crop.id)
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

  def edit; end

  def update
    if @phase.update(phase_params)
      render "show"
    else
      render "edit"
    end
  end

  def destroy
    if @phase.delete
      render "index"
    else 
      render "show"
    end
  end

  private

  def find_crop
    @crop = Crop.find(params[:crop_id])
  end

  def phase_params
    params.require(:phase).permit(:name, :description, :crop_id)
  end
  def find_or_new_phase
    @phase = params[:id] ? Phase.find(params[:id]) : Phase.new
  end
end
