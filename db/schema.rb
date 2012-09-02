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

ActiveRecord::Schema.define(:version => 20120902034321) do

  create_table "agencies", :force => true do |t|
    t.string   "name"
    t.integer  "concession_id"
    t.integer  "quantity_planned"
    t.integer  "quantity_procured"
    t.integer  "weight_loss"
    t.integer  "input_delivered"
    t.integer  "input_recovered"
    t.integer  "input_non_recovery"
    t.integer  "jute_bags_given"
    t.integer  "bags_received"
    t.integer  "bags_received_empty"
    t.integer  "transport_expense"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "cash_balance"
  end

  create_table "concessions", :force => true do |t|
    t.string   "name"
    t.integer  "concession_id"
    t.integer  "quantity_planned"
    t.integer  "quantity_procured"
    t.integer  "weight_loss"
    t.integer  "input_delivered"
    t.integer  "input_recovered"
    t.integer  "input_non_recovery"
    t.integer  "jute_bags_given"
    t.integer  "bags_received"
    t.integer  "bags_received_empty"
    t.integer  "transport_expense"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "cash_balance"
  end

end
