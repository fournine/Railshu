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

ActiveRecord::Schema.define(:version => 20100107094020) do

  create_table "customers", :force => true do |t|
    t.string   "ragione_sociale"
    t.string   "nome"
    t.string   "cognome"
    t.string   "p_iva"
    t.string   "cod_fisc"
    t.string   "indirizzo"
    t.string   "comune"
    t.string   "cap"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", :force => true do |t|
    t.string   "codice"
    t.date     "data_fattura"
    t.integer  "customer_id"
    t.text     "descrizione"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.text     "descrizione"
    t.integer  "qty"
    t.integer  "iva_id"
    t.integer  "invoice_id"
    t.float    "importo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_ivas", :force => true do |t|
    t.integer  "aliquota"
    t.string   "descrizione"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
