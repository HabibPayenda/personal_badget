require 'rails_helper'

RSpec.describe 'TransaktionsCategoreis', type: :model do
  before(:each) do
    @user = User.new(name: 'someone', email: 'someone@email.com', password: 'password')
    @categorie = Categorie.create(author: @user, name: 'FOOD', icon: 'some/fancy/url')
    @transaktion = Transaktion.create(author: @user, name: 'lunch', amount: 20)
    @categorie_transaktion = TransaktionCategory.create(transaktion: @transaktion, categorie: @categorie)
  end

  describe 'Test for validations - CategorieTransaktion model ->' do
    it 'Tests for CategorieTransaktion creation' do
      expect(@categorie_transaktion).to be_valid
    end
  end
end
