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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180131093853) do

  create_table "employees", force: :cascade do |t|
    t.integer "employee_id"
    t.datetime "joining_date"
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.string "gender"
    t.string "department"
    t.string "position"
    t.string "job_title"
    t.string "qualification"
    t.string "experience"
    t.string "maritel_status"
    t.string "father_name"
    t.string "mother_name"
    t.string "spocecom"
    t.string "blood_group"
    t.string "photo"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "pincode"
    t.string "phone_no"
    t.string "email"
    t.string "adharcard"
    t.string "pan_card"
    t.string "voter_card"
    t.string "passport"
    t.string "last_degree"
    t.string "experience_certificate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "longitude"
    t.float "latitude"
    t.string "slug"
  end

  create_table "students", force: :cascade do |t|
    t.integer "student_id"
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.string "gender"
    t.string "blood_group"
    t.string "birth_place"
    t.string "category"
    t.string "student_class"
    t.string "session"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "pincode"
    t.string "phone_no"
    t.string "photo"
    t.datetime "addmission_date"
    t.string "father_name"
    t.string "mother_name"
    t.string "emergency_no"
    t.string "previous_school_name"
    t.string "obtained"
    t.string "previous_class"
    t.string "adharcard"
    t.string "previous_school_marksheet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "longitude"
    t.float "latitude"
    t.string "income"
    t.string "slug"
    t.string "ocupasion"
  end

end
