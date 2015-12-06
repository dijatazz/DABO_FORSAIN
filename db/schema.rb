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

ActiveRecord::Schema.define(version: 20151205120232) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["id"], name: "index_categories_on_id"

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["id"], name: "index_comments_on_id"

  create_table "costs", force: :cascade do |t|
    t.string   "cost_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "costs", ["id"], name: "index_costs_on_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  add_index "countries", ["id"], name: "index_countries_on_id"

  create_table "difficulties", force: :cascade do |t|
    t.string   "difficulty_level"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "difficulties", ["id"], name: "index_difficulties_on_id"

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "cost_id"
    t.integer  "difficulty_id"
    t.integer  "bake_time"
    t.integer  "preparation_time"
    t.integer  "number_people"
    t.integer  "category_id"
    t.integer  "country_id"
  end

  add_index "dishes", ["id"], name: "index_dishes_on_id"

  create_table "ingredient_recipes", force: :cascade do |t|
    t.integer  "unity_id"
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.integer  "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredients", ["id"], name: "index_ingredients_on_id"

  create_table "recipes", force: :cascade do |t|
    t.integer  "dish_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "recipes", ["id"], name: "index_recipes_on_id"

  create_table "todos", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "symbole"
  end

  add_index "unities", ["id"], name: "index_unities_on_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "crypted_password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "users", ["id"], name: "index_users_on_id"

end
