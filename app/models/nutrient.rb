# frozen_string_literal: true

class Nutrient < ApplicationRecord
  belongs_to :plan
  belongs_to :phase
  belongs_to :week
end
