# frozen_string_literal: true

class Crop < ApplicationRecord
  has_many :plants
  has_many :plans
  has_many :variants
end
