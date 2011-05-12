class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :email
      t.string :email_lifekids
      t.string :timezone
      t.string :phone
      t.string :street_1
      t.string :street_2
      t.string :street_3
      t.string :city
      t.string :state
      t.string :postalcode
      t.string :country
      t.string :gmap_addr
      t.float :lat
      t.float :lng
      t.string :office_street_1
      t.string :office_street_2
      t.string :office_street_3
      t.string :office_city
      t.string :office_state
      t.string :office_postalcode
      t.string :office_country
      t.string :gmap_addr_office
      t.float :office_lat
      t.float :office_lng
      t.boolean :physical
      t.string :slug
      t.string :facebook_id

      t.timestamps

    end

    add_index :locations, :slug,                :unique => true

  end

  def self.down
    drop_table :locations
  end
end
