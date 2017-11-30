ActiveRecord::Schema.define(version: 20170920110612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_requests", force: :cascade do |t|
    t.json     "params"
    t.string   "path"
    t.datetime "deleted_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "encrypted_ssn"
    t.string   "encrypted_ssn_iv"
    t.string   "ip_address"
    t.integer  "resource_id"
    t.string   "resource_type"
  end
end
