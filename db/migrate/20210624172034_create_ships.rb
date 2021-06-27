# frozen_string_literal: true

class CreateShips < ActiveRecord::Migration[6.1]
  def change
    create_table :ships do |t|
      t.string :name
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
