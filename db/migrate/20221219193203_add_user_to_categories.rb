# frozen_string_literal: true

class AddUserToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :author, null: false, index: true, foreign_key: { to_table: :users }
  end
end
