# frozen_string_literal: true

class VariantsController < ApplicationController
  before_action :find_crop, except: [:index]
  before_action :find_variant, except: [:index, :new, :create]

  def index
    @variants = @crop.variants.all
  end

  def show; end
  
  def new; end

  def create
    @variant = @crop.variants.new(variant_params)
    if @variant.save
      redirect_to crops_path, flash: { notice: "Variant created" }
    end
  end

  def update
    if @variant.update(variant_params)
      redirect_to crops_path
    end
  end

  def delete
    if @variant.destroy
      redirect_to crops_path
    end
  end

  private

  def find_crop
    @crop = Crop.find(params[:crop_id])
  end

  def find_variant
    @variant = params[:id] ? @crop.variants.find(params[:id]) : @crop.variants.new
  end

  def variant_params
    params.require(:variant).permit()
  end
end
