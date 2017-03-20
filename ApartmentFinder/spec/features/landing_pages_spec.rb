require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'Going to website' do
    Given 'I am on the landing page' do
      visit '/'
    end
    Then 'I can see a header and forms' do
      expect(page).to have_content("Listing Apartments")
      expect(pgae).to have_content("Street	Apt#	City	Postal Code	State	Country	Contact	Phone Number	Contact Hours	Latitude	Longitude")
    end
    And 'I can click a New Apartment' do
      click_button 'New Apartment'
    end
  end
end
