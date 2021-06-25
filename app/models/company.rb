# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :city
  has_many :ships
  has_many :trips
end
