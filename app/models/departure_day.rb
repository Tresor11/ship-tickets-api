class DepartureDay < ApplicationRecord
  has_many :trips
  validates :day, presence: true
end
