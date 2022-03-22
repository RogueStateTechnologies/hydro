# frozen_string_literal: true

class HealthReport < ApplicationRecord
  belongs_to :plant
  has_one_attached :image
end
