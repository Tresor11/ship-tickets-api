# frozen_string_literal: true

class CreateFrequencies < ActiveRecord::Migration[6.1]
  def change
    create_table :frequencies do |t|
      t.string :frequency

      t.timestamps
    end
  end
end
