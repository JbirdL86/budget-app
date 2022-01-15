require 'rails_helper'

RSpec.feature 'Groups page', type: :feature do
  background do
    login_user
    visit "/groups/#{@group.id}"
  end

  scenario 'Should display transaction created' do
    expect(page).to have_content('Anything')
  end

  scenario 'Should display transaction amount' do
    expect(page).to have_content '$ 30.0'
  end

  scenario 'should redirect to new category path' do
    find('#add').click
    expect(current_path).to eq(new_activity_path)
  end
end
