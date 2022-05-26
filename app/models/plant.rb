# frozen_string_literal: true

class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :crop
  belongs_to :plan
  belongs_to :phase

  has_many   :health_reports
  has_many   :harvest_reports

  has_one_attached :detail_image
end
