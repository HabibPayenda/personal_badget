class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories, foreign_key: 'author_id', class_name: 'Categorie'
  has_many :transaktions, foreign_key: 'author_id', class_name: 'Transaktion'
end
