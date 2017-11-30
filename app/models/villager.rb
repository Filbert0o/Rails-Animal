class Villager < ApplicationRecord
  validates :name, presence: true
  validates :animal, presence: true
  validates :happiness, presence: true, inclusion: { in: 1..10, message: "Happiness must be between 1 - 10" }
  validates :campsite_id, presence: true

  belongs_to :campsite
end
