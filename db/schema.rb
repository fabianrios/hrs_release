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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150108222343) do

  create_table "companies", :force => true do |t|
    t.string   "name",               :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "logo"
    t.string   "mainurl"
    t.string   "user"
    t.string   "password"
    t.string   "banner_dashboard"
    t.string   "banner_cms"
    t.string   "banner_solicitudes"
    t.boolean  "active"
    t.string   "sv_cesantias"
    t.string   "sv_coworkers"
    t.string   "sv_encabezado"
    t.string   "sv_organigrama"
    t.string   "sv_endeudamiento"
  end

  add_index "companies", ["name"], :name => "index_companies_on_name", :unique => true

end
