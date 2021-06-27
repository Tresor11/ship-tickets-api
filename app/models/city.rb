# frozen_string_literal: true

class City < ApplicationRecord
  has_many :companies
  has_many :departure_trips, class_name: 'Trip', foreign_key: 'departure_city_id'
  has_many :arrival_trips, class_name: 'Trip', foreign_key: 'arrival_city_id'
end
