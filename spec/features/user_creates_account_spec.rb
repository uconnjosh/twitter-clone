require 'spec_helper'

describe User do
  it 'allows user to create new accounts' do
    visit root_path
    click_link 'Sign Up!!!'
    fill_in 'Email', with: 'fake@fake.com'
    fill_in 'Handle', with: 'faker'
    fill_in 'Password', with: 'fake'
    fill_in 'Password confirmation', with: 'fake'
    click_button 'Sign Up'
    page.should have_content 'Thank you for signing up!'
    end
  end
