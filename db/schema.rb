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

ActiveRecord::Schema.define(version: 2019_05_27_202006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultations", force: :cascade do |t|
    t.integer "auditorium", null: false
    t.datetime "start_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subject_id", null: false
    t.index ["subject_id"], name: "index_consultations_on_subject_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "faculty_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_departments_on_faculty_id"
  end

  create_table "entrants", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "patronymic"
    t.string "passport", null: false
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_entrants_on_department_id"
  end

  create_table "exam_lists", force: :cascade do |t|
    t.integer "assessment", default: 0, null: false
    t.bigint "entrant_id", null: false
    t.bigint "exam_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entrant_id"], name: "index_exam_lists_on_entrant_id"
    t.index ["exam_id"], name: "index_exam_lists_on_exam_id"
  end

  create_table "exams", force: :cascade do |t|
    t.datetime "start_date", null: false
    t.bigint "subject_id", null: false
    t.bigint "stream_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stream_id"], name: "index_exams_on_stream_id"
    t.index ["subject_id"], name: "index_exams_on_subject_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "number", null: false
    t.bigint "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_groups_on_department_id"
  end

  create_table "streams", force: :cascade do |t|
    t.integer "Number", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "consultation_id", null: false
    t.index ["consultation_id"], name: "index_streams_on_consultation_id"
    t.index ["group_id"], name: "index_streams_on_group_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "consultations", "subjects"
  add_foreign_key "departments", "faculties"
  add_foreign_key "entrants", "departments"
  add_foreign_key "exam_lists", "entrants"
  add_foreign_key "exam_lists", "exams"
  add_foreign_key "exams", "streams"
  add_foreign_key "exams", "subjects"
  add_foreign_key "groups", "departments"
  add_foreign_key "streams", "consultations"
  add_foreign_key "streams", "groups"
end
