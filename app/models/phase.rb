# frozen_string_literal: true

class Phase < ApplicationRecord
  belongs_to :plan

  has_many :weeks
  has_many :nutrients
end
