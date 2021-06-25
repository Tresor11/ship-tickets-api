class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.decimal :price
      t.references :ship, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.date :departure_date
      t.time :departure_time
      t.time :arrival_time
      t.references :departure_city, index: true, foreign_key: { to_table: :cities }
      t.references :arrival_city, index: true, foreign_key: { to_table: :cities }
      t.timestamps
    end
  end
end
