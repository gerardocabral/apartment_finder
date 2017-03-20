require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :street => "Street",
        :apt_num => "Apt Num",
        :city => "City",
        :postal_code => 2,
        :state => "State",
        :country => "Country",
        :contact => "Contact",
        :phone_number => "Phone Number",
        :contact_hours => "Contact Hours"
      ),
      Apartment.create!(
        :street => "Street",
        :apt_num => "Apt Num",
        :city => "City",
        :postal_code => 2,
        :state => "State",
        :country => "Country",
        :contact => "Contact",
        :phone_number => "Phone Number",
        :contact_hours => "Contact Hours"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Apt Num".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Hours".to_s, :count => 2
  end
end
