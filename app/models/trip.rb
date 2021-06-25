# frozen_string_literal: true

class Trip < ApplicationRecord
  belongs_to :departure_city, class_name: 'City'
  belongs_to :arrival_city, class_name: 'City'
  belongs_to :ship
  belongs_to :company
end
