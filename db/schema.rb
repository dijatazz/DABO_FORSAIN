# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151128030238) do

  create_table "beers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", force: true do |t|
    t.string  "name"
    t.integer "recipe_id"
    t.integer "category_id"
  end

  create_table "ingredient_recipes", force: true do |t|
    t.integer  "unity_id"
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.integer  "dish_id"
    t.string   "name"
    t.string   "description"
    t.integer  "people_nb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unities", force: true do |t|
    t.string   "unity_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
