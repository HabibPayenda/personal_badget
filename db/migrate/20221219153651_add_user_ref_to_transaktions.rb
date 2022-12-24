# frozen_string_literal: true

class AddUserRefToTransaktions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transaktions, :author, index: true, foreign_key: { to_table: :users }
  end
end
