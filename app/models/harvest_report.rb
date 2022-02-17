# frozen_string_literal: true

class HarvestReport < ApplicationRecord
  has_many :plant_reports, as: :reportable
end
