# frozen_string_literal: true

class CropsController < ApplicationController
  def create
    @crop = Crop.create(crop_params)
  end

  private

  def crop_params
    params.permit(:name)
  end
end
