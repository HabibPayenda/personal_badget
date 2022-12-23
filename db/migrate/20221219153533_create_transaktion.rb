# frozen_string_literal: true

class CreateTransaktion < ActiveRecord::Migration[7.0]
  def change
    create_table :transaktions do |t|
      t.string :name
      t.integer :amount
      t.timestamps
    end
  end
end
