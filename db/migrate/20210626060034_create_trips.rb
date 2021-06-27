# frozen_string_literal: true

class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.decimal :price
      t.references :ship, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.references :frequency, null: false, foreign_key: true
      t.string :departure_time
      t.string :trip_duration
      t.references :departure_city, index: true, foreign_key: { to_table: :cities }
      t.references :arrival_city, index: true, foreign_key: { to_table: :cities }
      t.timestamps
    end
  end
end
