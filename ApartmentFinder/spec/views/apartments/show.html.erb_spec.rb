require 'rails_helper'

RSpec.describe "apartments/show", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :street => "Street",
      :apt_num => "Apt Num",
      :city => "City",
      :postal_code => 2,
      :state => "State",
      :country => "Country",
      :contact => "Contact",
      :phone_number => "Phone Number",
      :contact_hours => "Contact Hours"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Apt Num/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Contact Hours/)
  end
end
