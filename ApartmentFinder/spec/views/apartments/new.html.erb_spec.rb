require 'rails_helper'

RSpec.describe "apartments/new", type: :view do
  before(:each) do
    assign(:apartment, Apartment.new(
      :street => "MyString",
      :apt_num => "MyString",
      :city => "MyString",
      :postal_code => 1,
      :state => "MyString",
      :country => "MyString",
      :contact => "MyString",
      :phone_number => "MyString",
      :contact_hours => "MyString"
    ))
  end

  it "renders new apartment form" do
    render

    assert_select "form[action=?][method=?]", apartments_path, "post" do

      assert_select "input#apartment_street[name=?]", "apartment[street]"

      assert_select "input#apartment_apt_num[name=?]", "apartment[apt_num]"

      assert_select "input#apartment_city[name=?]", "apartment[city]"

      assert_select "input#apartment_postal_code[name=?]", "apartment[postal_code]"

      assert_select "input#apartment_state[name=?]", "apartment[state]"

      assert_select "input#apartment_country[name=?]", "apartment[country]"

      assert_select "input#apartment_contact[name=?]", "apartment[contact]"

      assert_select "input#apartment_phone_number[name=?]", "apartment[phone_number]"

      assert_select "input#apartment_contact_hours[name=?]", "apartment[contact_hours]"
    end
  end
end
