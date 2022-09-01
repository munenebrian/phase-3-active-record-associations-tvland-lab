ActiveRecord::Schema.define(version: 6) do

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "actor_id"
    t.integer "show_id"
    t.string "catchphrase"
  end

  create_table "networks", force: :cascade do |t|
    t.string "call_letters"
    t.integer "channel"
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.string "day"
    t.string "season"
    t.string "genre"
    t.integer "network_id"
  end

end
