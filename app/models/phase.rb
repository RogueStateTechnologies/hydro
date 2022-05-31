# frozen_string_literal: true

class Phase < ApplicationRecord

  validates :name, uniqueness: true,  presence: true
  validates :description, length: { maximum: 500 }

  belongs_to :crop

end
