require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature "User can manage products" do
  scenario "User sees a page that says 'Welcome'" do
    visit '/'
    expect(page).to have_content("Welcome")
  end

end