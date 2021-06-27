# frozen_string_literal: true

class Ship < ApplicationRecord
  belongs_to :company
  has_many :trips
end
