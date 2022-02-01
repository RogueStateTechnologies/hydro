# frozen_string_literal: true

class Plan < ApplicationRecord
  belongs_to :crop
  has_many :phases
end
