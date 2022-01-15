require 'rails_helper'

RSpec.feature 'Splash page', type: :feature do
  background do
    login_user
    visit root_path
  end

  scenario 'Should display the current user name' do
    expect(page).to have_content('Welcome, Juanito gonzalez')
  end

  scenario 'Should display signed in message' do
    expect(page).to have_content('You are signed in')
  end

  scenario 'should redirect to groups path' do
    find('#go-group').click
    expect(current_path).to eq(groups_path)
  end
end
