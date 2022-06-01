# frozen_string_literal: true

class Crop < ApplicationRecord
  
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { maximum: 500 }

  has_many :nutrients
end
