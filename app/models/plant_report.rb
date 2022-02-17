class PlantReport < ApplicationRecord
  belongs_to :plant
  belongs_to :reportable, polymorphic: true
end
