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

ActiveRecord::Schema[7.0].define(version: 2024_09_13_124951) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "bonus_snapshots", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "reward_snapshots_date"
    t.integer "reward_bonus_total"
    t.integer "two_tier_bonus_total"
    t.integer "title_bonus_total"
    t.integer "a_san_bonus_total"
    t.integer "tax_withholding"
    t.integer "administration_fee"
    t.integer "cap_adjustment_money"
    t.integer "total_price"
    t.integer "total_payment_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bonus_snapshots_on_user_id"
  end

  create_table "cap_adjustment_moneys", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "cap_date", precision: nil
    t.index ["user_id"], name: "index_cap_adjustment_moneys_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.text "name"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "email"
  end

  create_table "expense_categories", force: :cascade do |t|
    t.string "name"
    t.string "color_code"
    t.decimal "expected_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "expense_category_id", null: false
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_category_id"], name: "index_expenses_on_expense_category_id"
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "grade_name", null: false, comment: "1：エグゼクティブ、2：ルビーエグゼクティブ、3：エメラルドエグゼクティグ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incentives", force: :cascade do |t|
    t.string "course_type", null: false, comment: "normal、advance、two_ter_normal、two_tier_advance、a_san_self_organization、a_san_other_organization, plus_two_tier_ruby, plus_two_tier_emerald"
    t.string "course_name", null: false, comment: "ノーマル、アドバンス、２ティア(ノーマル)、２ティア(アドバンス)、自組織３段目以降、他系列、ルビー、エメラルド"
    t.integer "incentive_price", null: false, comment: "初期値【100000：ノーマルコース、140000：アドバンス、30000；２ティア(ノーマル)、40000：２ティア（アドバンス）、10000：自組織３段目以降発生、15000：他系列契約時に発生、10000：ルビー、20000：エメラルド】"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "income_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "income_category_id", null: false
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["income_category_id"], name: "index_incomes_on_income_category_id"
    t.index ["user_id"], name: "index_incomes_on_user_id"
  end

  create_table "learn_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_num"
  end

  create_table "learns", force: :cascade do |t|
    t.string "name", null: false
    t.integer "learn_category_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_num"
    t.index ["learn_category_id"], name: "index_learns_on_learn_category_id"
    t.index ["user_id"], name: "index_learns_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false, comment: "イベント・お知らせのタイトル"
    t.string "body", null: false, comment: "イベント・お知らせの内容"
    t.integer "category_flg", null: false, comment: "１：イベント、２：お知らせ"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "parent_id", null: false
    t.integer "child_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_relationships_on_child_id"
    t.index ["parent_id"], name: "index_relationships_on_parent_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false, comment: "予約を行ったユーザーの一意識別子"
    t.bigint "seminar_id", null: false, comment: "予約された講義の一意識別子"
    t.integer "join_status", default: 1, null: false, comment: "1: 未参加, 9: 参加済み"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seminar_id"], name: "index_reservations_on_seminar_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.integer "user_id", null: false, comment: "ユーザID"
    t.integer "incentive_id", null: false, comment: "報酬コード"
    t.integer "incentive_price", comment: "報酬金額"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seminars", force: :cascade do |t|
    t.string "title", null: false, comment: "講義のタイトル"
    t.integer "year", null: false, comment: "講義の開催年"
    t.integer "month", null: false, comment: "講義の開催月"
    t.integer "day", null: false, comment: "講義の開催日"
    t.string "start_time", null: false, comment: "講義の開始時間"
    t.string "end_time", null: false, comment: "講義の終了時間"
    t.string "teacher", null: false, comment: "講師の名前"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "seminar_type"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "learn_id", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.boolean "approved", default: false, null: false
    t.bigint "learn_category_id"
    t.index ["learn_category_id"], name: "index_tasks_on_learn_category_id"
    t.index ["learn_id"], name: "index_tasks_on_learn_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "tmp_member_infos", force: :cascade do |t|
    t.string "email", comment: "メールアドレス"
    t.string "name", comment: "氏名"
    t.string "name_kana", comment: "氏名カナ"
    t.datetime "birthday", comment: "誕生日"
    t.string "phone", comment: "携帯番号"
    t.string "login_id", comment: "ログインID"
    t.string "password_digest", comment: "パスワードダイジェスト"
    t.integer "introducer_id", comment: "紹介者ID"
    t.integer "gender_id", comment: "性別(男：１、女：０)"
    t.string "zip_str3", comment: "郵便番号の前3桁"
    t.string "zip_str4", comment: "郵便番号の前4桁"
    t.string "ken", comment: "都道府県"
    t.string "city", comment: "市区町村"
    t.string "other_address", comment: "建物名・部屋番号"
    t.string "account_type", comment: "預金種別"
    t.string "bank_name", comment: "金融機関名"
    t.string "branch_name", comment: "支店名"
    t.string "branch_number", comment: "支店番号"
    t.string "account_number_hash", comment: "口座番号（ハッシュ化して見えないようにする）"
    t.string "account_number_tail", comment: "口座番号の末尾３桁"
    t.string "account_holder", comment: "口座名義"
    t.integer "sales_id", comment: "営業担当ID"
    t.integer "incentive_id", comment: "コースタイプ（１：ノーマル、２：アドバンス）"
    t.integer "a_san_flg", comment: "自組織３列目または他系列のaさんであるかどうか（１：自組織３列目以降、２：他系列、９：どれでもない）"
    t.integer "approval_id", comment: "承認ID（１：承認済み、２：承認待ち）"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_addresses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "zip_str3", null: false
    t.string "zip_str4", null: false
    t.string "ken", null: false
    t.string "city", null: false
    t.string "other_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "user_banks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "account_type", null: false
    t.string "bank_name", null: false
    t.string "branch_name", null: false
    t.string "branch_number", null: false
    t.string "account_number_hash", null: false
    t.string "account_number_tail", null: false
    t.string "account_holder", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_banks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login_id", limit: 64, null: false
    t.string "email", limit: 64, null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.datetime "birthday", null: false
    t.string "phone", null: false
    t.string "password_digest", null: false
    t.integer "status", null: false
    t.integer "introducer_id", null: false
    t.integer "admin_flg", null: false
    t.datetime "last_login_at"
    t.string "image"
    t.integer "gender_id", null: false
    t.integer "online_flg", null: false
    t.bigint "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "locked_at"
    t.integer "failed_login_count", default: 0
    t.boolean "locked", default: false, null: false
    t.integer "incentive_id"
    t.boolean "outsourcing_flg", default: false, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["grade_id"], name: "index_users_on_grade_id"
    t.index ["login_id"], name: "index_users_on_login_id", unique: true
  end

  create_table "video_views", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "learn_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["learn_id"], name: "index_video_views_on_learn_id"
    t.index ["user_id"], name: "index_video_views_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bonus_snapshots", "users"
  add_foreign_key "cap_adjustment_moneys", "users"
  add_foreign_key "expenses", "expense_categories"
  add_foreign_key "expenses", "users"
  add_foreign_key "incomes", "income_categories"
  add_foreign_key "incomes", "users"
  add_foreign_key "learns", "learn_categories"
  add_foreign_key "learns", "users"
  add_foreign_key "relationships", "users", column: "child_id"
  add_foreign_key "relationships", "users", column: "parent_id"
  add_foreign_key "reservations", "seminars"
  add_foreign_key "reservations", "users"
  add_foreign_key "rewards", "incentives"
  add_foreign_key "rewards", "users"
  add_foreign_key "tasks", "learn_categories"
  add_foreign_key "tasks", "learns"
  add_foreign_key "tasks", "users"
  add_foreign_key "user_addresses", "users"
  add_foreign_key "user_banks", "users"
  add_foreign_key "users", "grades"
  add_foreign_key "video_views", "learns"
  add_foreign_key "video_views", "users"
end
