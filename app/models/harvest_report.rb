# frozen_string_literal: true

class HarvestReport < ApplicationRecord

  validates :height_in_centimeters, :amount_harvested, presence: true, numericality: { only_integer: true }
  belongs_to :plant
end
