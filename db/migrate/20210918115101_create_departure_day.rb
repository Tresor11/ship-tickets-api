class CreateDepartureDay < ActiveRecord::Migration[6.1]
  def change
    create_table :departure_days do |t|
      t.string :day

      t.timestamps
    end
  end
end
