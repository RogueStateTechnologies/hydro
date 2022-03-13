# frozen_string_literal: true

class PhasesController < ApplicationController
  before_action :find_phase, except: [:index, :new, :create]

  def index
    @phases = Phase.all
  end

  def show
    @phase
  end

  def new
    @phase = Phase.new
  end

  def create
    @phase = Phase.create(phase_params)
  end

  def update
    @phase.update(phase_params)
  end

  def delete
    @phase.delete
  end
end
