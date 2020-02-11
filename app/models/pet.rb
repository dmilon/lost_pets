class Pet < ApplicationRecord
  SPECIES = %w[cat dog turtle rabbit]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
