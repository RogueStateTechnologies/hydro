class Plant < ApplicationRecord
  belongs_to :crop
  belongs_to :variant
  belongs_to :plan
  belongs_to :medium
  belongs_to :phase
  has_many :growth_reports
  has_many :harvest_reports
  has_many :health_reports
end
