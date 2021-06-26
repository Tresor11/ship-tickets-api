# frozen_string_literal: true

ActiveAdmin.register Trip do
  permit_params :price, :company_id, :ship_id,:frequency_id,:departure_city_id, :arrival_city_id, :departure_time, :trip_duration
  # form do |f|
  #   f.inputs do
  #     f.input :price
  #     f.input :company_id
  #     f.input :ship_id
  #     f.input :frequency_id
  #     f.input :departure_city_id
  #     f.input :arrival_city_id
  #     f.input :departure_time
  #     f.input :trip_duration
  #   end
  #   f.actions
  # end
end
