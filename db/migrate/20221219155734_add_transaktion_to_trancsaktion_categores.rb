# frozen_string_literal: true

class AddTransaktionToTrancsaktionCategores < ActiveRecord::Migration[7.0]
  def change
    add_reference :transaktion_categories, :transaktion, index: true, foreign_key: true
  end
end
