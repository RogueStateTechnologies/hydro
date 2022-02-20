# frozen_string_literal: true

class VariantsController < ApplicationController
  befrore_action :find_variant, except: :index

  def index
    @variants = Variant.all
  end

  def show
    @varient
  end
  
  def new
    @variant = Variant.new
  end

  def create
    @variant = Variant.create(variant_params)
  end

  def update
    @variant.update(variant_params)
  end

  def delete
    @variant.delete
  end

  private

  def find_variant
    @variant = Variant.find(params[:id])
  end

  def variant_params
    params.permit(:name, :description, :crop_id)
  end
end
