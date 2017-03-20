class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :street
      t.string :apt_num
      t.string :city
      t.integer :postal_code
      t.string :state
      t.string :country
      t.string :contact
      t.string :phone_number
      t.string :contact_hours

      t.timestamps null: false
    end
  end
end
