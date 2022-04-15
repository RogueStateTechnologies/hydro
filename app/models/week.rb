class Week < ApplicationRecord
  belongs_to :plan
  belongs_to :phase

  has_many :nutrients
end
