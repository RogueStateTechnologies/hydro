class VariantsController < ApplicationController
  
  def create
    @variant = Variant.create(variant_params)
  end

  private

  def variant_params
    params.permit( :name )
  end
end
