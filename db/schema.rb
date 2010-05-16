# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100512051731) do

  create_table "full_details", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personals", :force => true do |t|
    t.string   "name",              :limit => 50,                               :null => false
    t.date     "dob"
    t.string   "gender",            :limit => 1
    t.string   "address"
    t.string   "city"
    t.integer  "pin"
    t.integer  "mob"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "personal_id"
    t.decimal  "twelfth_percent",                 :precision => 5, :scale => 2
    t.decimal  "tenth_percent",                   :precision => 5, :scale => 2
    t.string   "degree"
    t.string   "current_jobstatus"
  end

  add_index "personals", ["personal_id"], :name => "personal_unique", :unique => true

  create_table "professionals", :force => true do |t|
    t.float    "twelfth_percent",   :limit => 4
    t.float    "tenth_percent",     :limit => 4
    t.string   "degree"
    t.string   "current_jobstatus"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "professional_id"
  end

  add_index "professionals", ["professional_id"], :name => "professional_fk"

end
