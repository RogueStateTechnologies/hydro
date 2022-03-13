# frozen_string_literal: true

class VariantsController < ApplicationController
  before_action :find_variant, except: [:index, :new, :create]

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
end
