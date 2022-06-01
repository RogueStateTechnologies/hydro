# frozen_string_literal: true

class Phase < ApplicationRecord

  validates :name,  presence: true
  validates :description, length: { maximum: 500 }

  belongs_to :crop

  has_many :nutrients

end
