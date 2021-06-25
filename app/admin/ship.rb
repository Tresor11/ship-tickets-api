# frozen_string_literal: true

ActiveAdmin.register Ship do
  permit_params :name, :company_id
end
