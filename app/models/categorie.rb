class Categorie < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :transaktion_categories
  has_many :transaktions, through: :transaktion_categories
end
