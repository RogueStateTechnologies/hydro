# frozen_string_literal: true

class MediaController < ApplicationController
  before_action :find_or_new_medium, except: :index

  def index
    @media = Medium.all
  end

  def show; end

  def new; end

  def create
    @medium = Medium.new(medium_params)
    if @medium.save
      redirect_to @medium
    else
      render "new"
    end
  end

  def update
    if @medium.update(medium_params)
      redirect_to @medium
    else
      render "update"
    end
  end

  def delete
    if @medium.delete
      render "index"
    else
      render @medium
    end
  end

  private

  def medium_params
    params.require(:medium).permit(:name, :description)
  end

  def find_or_new_medium
    @medium = params[:id] ? Medium.find(params[:id]) : Medium.new
  end
end
