# frozen_string_literal: true

ActiveAdmin.register Company do
  permit_params :name, :city_id
end
