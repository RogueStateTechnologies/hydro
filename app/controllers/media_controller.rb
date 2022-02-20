# frozen_string_literal: true

class MediaController < ApplicationController
  befor_action :find_media, except: :index

  def index
    @media = Medium.all
  end

  def show
    @media
  end

  def new
    @media = Medium.new
  end

  def create
    @medium = Medium.create(medium_params)
  end

  def update
    @media.update(medium_params)
  end

  def delete
    @media.delete
  end

  private

  def find_media
    @media = Medium.find(params[:id])
  end

  def medium_params
    params.permit(:name, :description)
  end
end
