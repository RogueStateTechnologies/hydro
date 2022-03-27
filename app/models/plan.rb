# frozen_string_literal: true

class Plan < ApplicationRecord
  belongs_to :crop
  
  has_many :phases
  has_many :weeks
  has_many :nutrients
end
