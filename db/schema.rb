# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_918_120_137) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_admin_comments', force: :cascade do |t|
    t.string 'namespace'
    t.text 'body'
    t.string 'resource_type'
    t.bigint 'resource_id'
    t.string 'author_type'
    t.bigint 'author_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index %w[author_type author_id], name: 'index_active_admin_comments_on_author'
    t.index ['namespace'], name: 'index_active_admin_comments_on_namespace'
    t.index %w[resource_type resource_id], name: 'index_active_admin_comments_on_resource'
  end

  create_table 'cities', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'companies', force: :cascade do |t|
    t.string 'name'
    t.bigint 'city_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['city_id'], name: 'index_companies_on_city_id'
  end

  create_table 'departure_days', force: :cascade do |t|
    t.string 'day'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'frequencies', force: :cascade do |t|
    t.string 'frequency'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'ships', force: :cascade do |t|
    t.string 'name'
    t.bigint 'company_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['company_id'], name: 'index_ships_on_company_id'
  end

  create_table 'trips', force: :cascade do |t|
    t.decimal 'price'
    t.bigint 'ship_id', null: false
    t.bigint 'company_id', null: false
    t.bigint 'frequency_id', null: false
    t.string 'departure_time'
    t.string 'trip_duration'
    t.bigint 'departure_city_id'
    t.bigint 'arrival_city_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'departure_day_id', null: false
    t.index ['arrival_city_id'], name: 'index_trips_on_arrival_city_id'
    t.index ['company_id'], name: 'index_trips_on_company_id'
    t.index ['departure_city_id'], name: 'index_trips_on_departure_city_id'
    t.index ['departure_day_id'], name: 'index_trips_on_departure_day_id'
    t.index ['frequency_id'], name: 'index_trips_on_frequency_id'
    t.index ['ship_id'], name: 'index_trips_on_ship_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'companies', 'cities'
  add_foreign_key 'ships', 'companies'
  add_foreign_key 'trips', 'cities', column: 'arrival_city_id'
  add_foreign_key 'trips', 'cities', column: 'departure_city_id'
  add_foreign_key 'trips', 'companies'
  add_foreign_key 'trips', 'departure_days'
  add_foreign_key 'trips', 'frequencies'
  add_foreign_key 'trips', 'ships'
end
