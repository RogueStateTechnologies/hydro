# frozen_string_literal: true

class MediaController < ApplicationController
  def create
    @medium = Medium.create(medium_params)
  end

  private

  def medium_params
    params.permit( :name, :description)
  end
end
