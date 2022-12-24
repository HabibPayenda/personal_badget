class Transaktion < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :transaktion_categories
  has_many :categories, through: :transaktion_categories

  validates :author_id, presence: true
  validates :name, presence: true, length: { maximum: 25 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
