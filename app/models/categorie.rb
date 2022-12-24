class Categorie < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :transaktion_categories
  has_many :transaktions, through: :transaktion_categories

  validates :name, presence: true, length: { maximum: 25 }
  validates :icon, presence: true, length: { maximum: 250 }

  def name_with_initial
    'habib'
  end
end
