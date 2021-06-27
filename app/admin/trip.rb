# frozen_string_literal: true

ActiveAdmin.register Trip do
  permit_params :price, :company_id, :ship_id, :frequency_id, :departure_city_id, :arrival_city_id, :departure_time,
                :trip_duration
  form do |f|
    f.inputs do
      f.input :company_id, label: 'Company', as: :select, collection: Company.pluck(:name, :id)
      f.input :ship_id, label: 'Ship', as: :select, collection: Ship.pluck(:name, :id)
      f.input :frequency_id, label: 'Frequency', as: :select, collection: Frequency.pluck(:frequency, :id)
      f.input :departure_city_id, label: 'Departure City', as: :select, collection: City.pluck(:name, :id)
      f.input :arrival_city_id, label: 'Arrival City', as: :select, collection: City.pluck(:name, :id)
      f.input :departure_time
      f.input :trip_duration
      f.input :price
    end
    f.actions
  end
end
