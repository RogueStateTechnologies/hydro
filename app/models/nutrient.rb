class Nutrient < ApplicationRecord
  belongs_to :plan
  belongs_to :phase
end
