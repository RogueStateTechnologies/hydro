# frozen_string_literal: true

class HealthReport < ApplicationRecord
  has_many :plant_reports, as: :reportable
end
