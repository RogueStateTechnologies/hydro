# frozen_string_literal: true

class Crop < ApplicationRecord
  
  validates :name, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :description, presence: true, uniqueness: true, length: { maximum: 500 }

  has_many :plants
  has_many :plans
  has_many :variants
end
