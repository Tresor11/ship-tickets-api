# frozen_string_literal: true

class Frequency < ApplicationRecord
  has_many :trips
  validates :frequency, presence: true
end
