# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110512195920) do

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "email_lifekids"
    t.string   "timezone"
    t.string   "phone"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "street_3"
    t.string   "city"
    t.string   "state"
    t.string   "postalcode"
    t.string   "country"
    t.string   "gmap_addr"
    t.float    "lat"
    t.float    "lng"
    t.string   "office_street_1"
    t.string   "office_street_2"
    t.string   "office_street_3"
    t.string   "office_city"
    t.string   "office_state"
    t.string   "office_postalcode"
    t.string   "office_country"
    t.string   "gmap_addr_office"
    t.float    "office_lat"
    t.float    "office_lng"
    t.boolean  "physical"
    t.string   "slug"
    t.string   "facebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["slug"], :name => "index_locations_on_slug", :unique => true

end
