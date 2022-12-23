# frozen_string_literal: true

class CreateTransaktionCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :transaktion_categories, &:timestamps
  end
end
