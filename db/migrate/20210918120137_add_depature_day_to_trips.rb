class AddDepatureDayToTrips < ActiveRecord::Migration[6.1]
  def change
    add_reference :trips, :departure_day, null: false, foreign_key: true
  end
end
