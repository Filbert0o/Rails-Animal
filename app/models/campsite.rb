class Campsite < ApplicationRecord
  validates :name, presence: true
  validates :owner, presence: true

  has_many :villagers
end
