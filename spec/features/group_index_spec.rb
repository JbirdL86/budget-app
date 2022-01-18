require 'rails_helper'

RSpec.feature 'Check for Groups', type: :feature do
  background do
    login_user
    visit groups_path
  end

  scenario 'Should show the correct title' do
    expect(page).to have_content('Groups')
  end

  scenario 'Should show the created group' do
    expect(page).to have_content '$ 30.0'
  end

  scenario 'show the redirect to new group' do
    find('#add').click
    expect(current_path).to eq(new_group_path)
  end
end
