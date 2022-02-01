# frozen_string_literal: true

class VariantsController < ApplicationController
  
  def create
    @variant = Variant.create(variant_params)
  end

  private

  def variant_params
    params.permit( :name, :description, :crop_id )
  end
end
