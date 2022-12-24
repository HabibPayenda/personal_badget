require 'rails_helper'

RSpec.describe 'Categories', type: :feature do
  before(:each) do
    @user = User.new(
      name: 'SOMEUSER',
      email: 'someuser@email.com',
      password: 'password'
    )

    @categorie = Categorie.create(
      author: @user,
      name: 'GARDEN MANAGMENT',
      icon: 'some/url'
    )
    visit new_user_session_path
    fill_in 'Email', with: 'someuser@email.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end

  describe 'Test for Categorie Views' do
    it 'should check for http status' do
      expect(page).to have_content('CATEGORIES')
    end

    it 'should check SIGN OUT button and SIGNUP' do
      click_button 'SIGN OUT'
      expect(page).to have_content('Signed out successfully')
    end
  end
end
