# frozen_string_literal: true

class AddCategoriesToTaransaktionCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :transaktion_categories, :category, index: true, foreign_key: true
  end
end
