class TransaktionCategory < ApplicationRecord
  belongs_to :categorie
  belongs_to :transaktion

  validates :categorie, presence: true
  validates :transaktion, presence: true
end
