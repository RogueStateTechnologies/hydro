# frozen_string_literal: true

class Nutrient < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :manufacturer, presence: true
  validates :compound, presence: true

  belongs_to :crop
end
