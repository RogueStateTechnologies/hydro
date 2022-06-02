# frozen_string_literal: true

class HealthReport < ApplicationRecord
  validates :height_in_centimeters, presence: true
  validates :height_in_centimeters, numericality: { only_intger: true }

  validates :average_air_temp, presence: true
  validates :average_air_temp, numericality: { only_integer: true }

  validates :ph, presence: true

  validates :light_exposure, presence: true
  validates :light_exposure, inclusion: { in: 0..25 }

  validates :root_health, presence: true
  validates :root_health, inclusion: { in: %w(good poor) }

  belongs_to :plant
  has_one_attached :image
end
