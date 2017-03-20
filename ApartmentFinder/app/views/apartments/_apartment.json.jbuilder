json.extract! apartment, :id, :street, :apt_num, :city, :postal_code, :state, :country, :contact, :phone_number, :contact_hours, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)
