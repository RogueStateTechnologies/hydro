# frozen_string_literal: true

class Plant < ApplicationRecord

  validates :origin, presence: true
  validates :origin, inclusion: { in: %w(seed clone)}

  validates :environment, presence: true
  validates :environment, inclusion: { in: %w(outdoor indoor controlled) }

  validates :medium, presence: true
  validates :medium, inclusion: { in: %w(soil substrate)}

  validates :light_system, presence: true
  validates :light_system, inclusion: { in: %w(natural artifical) }

  validates :container_size, presence: true
  validates :container_size, numericality: { only_integer: true }

  validates :published, presence: true
  validates :published, inclusion: { in: [true, false] }

  validates :feedings_per_week, presence: true
  validates :feedings_per_week, numericality: { only_integer: true }

  belongs_to :user
  belongs_to :crop
  belongs_to :phase

  has_many   :health_reports

  has_many   :harvest_reports

  has_one_attached :detail_image
end
