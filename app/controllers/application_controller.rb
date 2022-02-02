# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def after_sign_in_path_for(resource)
    user_plants_path(current_user) # your path
  end

end
