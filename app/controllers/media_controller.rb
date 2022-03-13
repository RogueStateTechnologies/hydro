# frozen_string_literal: true

class MediaController < ApplicationController
  before_action :find_media, except: [:index, :new, :create]

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
end
