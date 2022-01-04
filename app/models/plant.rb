class Plant < ApplicationRecord
  belongs_to :crop
  belongs_to :variant
  belongs_to :plan
  belongs_to :medium
  belongs_to :phase
end
