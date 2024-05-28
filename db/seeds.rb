# frozen_string_literal: true

# 報酬の種別及び金額情報のマスターデータ
incentives = [
  { course_type: "normal", course_name: "ノーマルコース（2ヶ月）", incentive_price: 35000, created_at: Time.current },
  { course_type: "deluxe", course_name: "デラックスコース（6ヶ月）", incentive_price: 70000, created_at: Time.current },
  { course_type: "luxury", course_name: "ラグジュアリーコース（12ヶ月）", incentive_price: 100000, created_at: Time.current },
  { course_type: "two_tier", course_name: "2ティア", incentive_price: 40000, created_at: Time.current },
  { course_type: "normal_incentive", course_name: "ノーマルコース（インセンティブ）", incentive_price: 20000, created_at: Time.current },
  { course_type: "deluxe_incentive", course_name: "デラックスコース（インセンティブ）", incentive_price: 30000, created_at: Time.current },
  { course_type: "luxury_incentive", course_name: "ラグジュアリーコース（インセンティブ）", incentive_price: 70000, created_at: Time.current }
]

# グレードのマスターデータ
grades = [
  { grade_name: "エグゼクティブ" },
  { grade_name: "ルビーエグゼクティブ" },
  { grade_name: "エメラルドエグゼクティブ" },
  { id: 99, grade_name: "ノーマル" }
]

# 新規MTカテゴリー
learn_categories = [
  { name: "新規MT", created_at: Time.current, updated_at: nil},
  { name: "株式取引の学び", created_at: Time.current, updated_at: nil},
  { name: "保険の学び", created_at: Time.current, updated_at: nil},
  { name: "不動産の学び", created_at: Time.current, updated_at: nil},
  { name: "信用取引の学び", created_at: Time.current, updated_at: nil},
  { name: "為替取引", created_at: Time.current, updated_at: nil}
]

# # 会員のマスターデータ
# users = [
#   # id: 1 細谷菜奈
#   { login_id: "nanarapunzel0121", email: "nanarapunzel.0121@gmail.com", name: "細谷菜奈", password: "Nana0121!", password_confirmation: "Nana0121!", name_kana: "ホソヤナナ", birthday: Date.new(1990, 1, 21), phone: "08093891466", status: 1, introducer_id: 99999, admin_flg: 1, gender_id: 2, online_flg: 9, grade_id: 2, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 2 篠本拓海
#   { login_id: "dekmegh001", email: "dekmegh@gmail.com", name: "篠本拓海", password: "Nsa02moa!?", password_confirmation: "Nsa02moa!?", name_kana: "シノモトタクミ", birthday: Date.new(1997, 8, 23), phone: "08058394411", status: 1, introducer_id: 1, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 1, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 3 山田尚登
#   { login_id: "23832383", email: "draw926926@gmail.com", name: "山田尚登", password: "Jojo23832383!?", password_confirmation: "Jojo23832383!?", name_kana: "ヤマダナオト", birthday: Date.new(1999, 9, 26), phone: "08088778467", status: 1, introducer_id: 1, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 2, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 4 尾塩彩乃　
#   {login_id: "unknown001", email: "unknown@gmail.com", name: "尾塩彩乃", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "オシオアヤノ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 2, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-03-01 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 5 本間紗矢香　
#   { login_id: "unknown002", email: "unknown2@gmail.com", name: "本間紗矢香", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ホンマサヤカ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 2, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-04-27 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 6 奈良亜香希
#   { login_id: "curonecogoro57", email: "curoneco.goro.5.7@docomo.ne.jp", name: "奈良亜香希", password: "curonecogoro57!?", password_confirmation: "curonecogoro57!?", name_kana: "ナラアカネ", birthday: Date.new(1998, 4, 13), phone: "09029419538", status: 1, introducer_id: 2, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 1, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 7 大島優希　
#   { login_id: "unknown003", email: "unknown3@gmail.com", name: "大島優希", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "オオシマユウキ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 2, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-07-10 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 8 伊藤美紀　
#   { login_id: "unknown004", email: "unknown4@gmail.com", name: "伊藤美紀", password: "Unknownb!?", password_confirmation: "Unknown!?", name_kana: "イトウミキ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 2, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-07-16 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 9 乗田愛菜　
#   { login_id: "unknown005", email: "unknown5@gmail.com", name: "乗田愛菜", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "トイタマナ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 4, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-03-03 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 11 南杜萌　
#   { login_id: "unknown006", email: "unknown6@gmail.com", name: "南杜萌", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ミナミトモエ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 4, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 12 三改木穂乃　
#   { login_id: "unknown007", email: "unknown7@gmail.com", name: "三改木穂乃", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ミゾロギホノ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 4, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 13 酒井響己
#   { login_id: "19981002", email: "hibiki.bsbll1002@icloud.com", name: "酒井響己", password: "Hibiki1002!?", password_confirmation: "Hibiki1002!?", name_kana: "サカイヒビキ", birthday: Date.new(1998, 10, 2), phone: "08098244926", status: 1, introducer_id: 4, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 14 本間千尋
#   { login_id: "adc10", email: "chihhiro3162@gmail.com", name: "本間千尋", password: "Adc00000!?", password_confirmation: "Adc00000!?", name_kana: "ホンマチヒロ", birthday: Date.new(1998, 9, 29), phone: "08064383438", status: 1, introducer_id: 4, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 15 鴨作瑠美
#   { login_id: "saku02ra", email: "rums.agwa@gmail.com", name: "鴨作瑠美", password: "saku02raSTN!?", password_confirmation: "saku02raSTN!?", name_kana: "カモサクルミ", birthday: Date.new(1998, 2, 24), phone: "08068051998", status: 1, introducer_id: 4, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-03-07 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 16 坂妻永遠
#   { login_id: "8251", email: "zinygig9qaxi4bgzjrwm@docomo.ne.jp", name: "坂妻永遠", password: "csjeicA22!", password_confirmation: "csjeicA22!", name_kana: "サカツマトワ", birthday: Date.new(1999, 10, 19), phone: "09074263504", status: 1, introducer_id: 4, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 17 前田光成
#   { login_id: "2808", email: "maekou20011224@gmail.com", name: "前田光成", password: "mKBRZ61!?", password_confirmation: "mKBRZ61!?", name_kana: "マエダコウセイ", birthday: Date.new(1999, 12, 24), phone: "09025041754", status: 1, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-04 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 18 菊池晃也
#   { login_id: "unknown008", email: "unknown8@gmail.com", name: "菊池晃也", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "キクチコウヤ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-08-26 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 19 落合悠吏
#   { login_id: "unknown009", email: "unknown9@gmail.com", name: "落合悠吏", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "オチアイユウリ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-08-15 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 20 佐野悠翔
#   { login_id: "unknown0010", email: "unknown10@gmail.com", name: "佐野悠翔", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "サノユウト", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-10-19 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 21 木村健太
#   { login_id: "unknown0011", email: "unknown11@gmail.com", name: "木村健太", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "キムラケンタ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-12 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 22 髙橋亮平
#   { login_id: "unknown0012", email: "unknown12@gmail.com", name: "髙橋亮平", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "タカハシリョウヘイ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-19 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 23 辺戸嘉胤
#   { login_id: "unknown0013", email: "unknown13@gmail.com", name: "辺戸嘉胤", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ヘドヨシツグ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-26 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 24 鈴木航輔
#   { login_id: "unknown0014", email: "unknown14@gmail.com", name: "鈴木航輔", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "スズキコウスケ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-06-16 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 25 鈴木純輝
#   { login_id: "unknown0015", email: "unknown15@gmail.com", name: "鈴木純輝", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "スズキジュンキ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-06-17 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 26 及川陸
#   { login_id: "unknown0016", email: "unknown16@gmail.com", name: "及川陸", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "オヨカワリク", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-04-14 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 27 井上結太
#   { login_id: "unknown0017", email: "unknown17@gmail.com", name: "井上結太", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "イノウエユウタ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-04-14 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 28 成瀬豊
#   { login_id: "unknown0018", email: "unknown18@gmail.com", name: "成瀬豊", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ナルセユタカ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 29 鈴木康太
#   { login_id: "unknown0019", email: "unknown19@gmail.com", name: "鈴木康太", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "スズキコウタ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 30 長屋拓斗
#   { login_id: "unknown0020", email: "unknown20@gmail.com", name: "長屋拓斗", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ナガヤタクト", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-03-24 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 31 高岡聖也
#   { login_id: "unknown0021", email: "unknown21@gmail.com", name: "高岡聖也", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "タカオカセイヤ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 32 岩間輝太
#   { login_id: "unknown0022", email: "unknown22@gmail.com", name: "岩間輝太", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "イワマコウタ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-15 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 33 岩永翼
#   { login_id: "180309", email: "bskuhsb@gmail.com", name: "岩永翼", password: "Iwaiwa0!!", password_confirmation: "Iwaiwa0!!", name_kana: "イワナガツバサ", birthday: Date.new(1990, 3, 9), phone: "07020298402", status: 1, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 34 渡邉大真
#   { login_id: "hiroma130219", email: "0su38k226mb088s@au.com", name: "渡邉大真", password: "HIroma0219!?", password_confirmation: "HIroma0219!?", name_kana: "ワタナベヒロマ", birthday: Date.new(1990, 2, 19), phone: "07023490708", status: 1, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-10-16 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 35 国本朝陽
#   { login_id: "08108929", email: "kuni_asahi0515@icloud.com", name: "国本朝陽", password: "Asuka0810!?", password_confirmation: "Asuka0810!?", name_kana: "クニモトアサヒ", birthday: Date.new(1990, 5, 15), phone: "09064048929", status: 1, introducer_id: 3, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 1, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 36 青木史哉
#   { login_id: "unknown0023", email: "unknown23@gmail.com", name: "青木史哉", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "アオキフミヤ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-17 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 37 倉内未来
#   { login_id: "mikukamen5656", email: "asdg08122635@icloud.com", name: "倉内未来", password: "Miku0812!?", password_confirmation: "Miku0812!?", name_kana: "クラウチミク", birthday: Date.new(2002, 8, 12), phone: "07014549903", status: 1, introducer_id: 7, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-04-16 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 38 堀田大輝
#   { login_id: "hottadaiki", email: "hottadaiki@icloud.com", name: "堀田大輝", password: "Nanasuzu0911!?", password_confirmation: "Nanasuzu0911!?", name_kana: "クラウチミク", birthday: Date.new(2002, 4, 18), phone: "09044137492", status: 1, introducer_id: 7, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-11-19 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 39 中坂元紀
#   { login_id: "unknown0024", email: "unknown24@gmail.com", name: "中坂元紀", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ナカサカモトノリ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 7, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-01 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 40 楊光
#   { login_id: "unknown0025", email: "unknown25@gmail.com", name: "楊光", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ヨウコウ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 7, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-07-23 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 41 佐藤琉聖
#   { login_id: "unknown0026", email: "unknown26@gmail.com", name: "佐藤琉聖", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "サトウリュウセイ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 7, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-07-29 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 42 竹内響
#   { login_id: "Resort861", email: "takeuchirei8631@icloud.com", name: "竹内響", password: "Resort861$*@", password_confirmation: "Resort861$*@", name_kana: "タケウチレイ", birthday: Date.new(1990, 5, 3), phone: "07043087972", status: 1, introducer_id: 7, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-25 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 43 鬼崎愛香
#   { login_id: "unknown0027", email: "unknown27@gmail.com", name: "鬼崎愛香", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "オニザキアイカ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 13, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-04-05 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 44 今井理乃
#   { login_id: "20220815", email: "ordchidee.27@icloud.com", name: "今井理乃", password: "Siitan1!?", password_confirmation: "Siitan1!?", name_kana: "イマイリノ", birthday: Date.new(2001, 10, 27), phone: "09050714386", status: 1, introducer_id: 13, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 45 奥平竜司
#   { login_id: "unknown0028", email: "unknown28@gmail.com", name: "奥平竜司", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "オクダイラリュウジ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 15, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-09-02 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 46 山越迪斗
#   { login_id: "23108054", email: "kosha2380@gmail.com", name: "山越迪斗", password: "Kosha5423!?", password_confirmation: "Kosha5423!?", name_kana: "ヤマコシフミト", birthday: Date.new(1990, 8, 22), phone: "08042300822", status: 1, introducer_id: 15, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-06-06 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 47 佐野俊介
#   { login_id: "unknown0029", email: "unknown29@gmail.com", name: "佐野俊介", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "サノシュンスケ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 16, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-10-12 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 48 日比悠斗
#   { login_id: "hibiyuto", email: "hibi.yuto@icloud.com", name: "日比悠斗", password: "1997Yuto!?", password_confirmation: "1997Yuto!?", name_kana: "ヒビユウト", birthday: Date.new(1997, 12, 3), phone: "08090545583", status: 1, introducer_id: 16, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 1, created_at: "2023-02-25 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 49 田邉諒多
#   { login_id: "Gekyouenrai", email: "r123gekyou@gmail.com", name: "田邉諒多", password: "T0ntink@n", password_confirmation: "T0ntink@n", name_kana: "タナベリョウタ", birthday: Date.new(2001, 12, 23), phone: "08055602646", status: 1, introducer_id: 17, admin_flg: 9, gender_id: 1, online_flg: 99, grade_id: 99, created_at: "2023-08-24 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 50 後藤愛佳
#   { login_id: "unknown0030", email: "unknown30@gmail.com", name: "後藤愛佳", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ゴトウアイカ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 17, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-08-25 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 51 中山稜志
#   { login_id: "unknown0031", email: "unknown31@gmail.com", name: "中山稜志", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ナカヤマリョウジ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 34, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-11-18 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 52 都丸琳子
#   { login_id: "Tzuyu0614", email: "tomaru0614@icloud.com", name: "都丸琳子", password: "Rin0815!", password_confirmation: "Rin0815!", name_kana: "トマルリンコ", birthday: Date.new(2002, 8, 15), phone: "07043267645", status: 1, introducer_id: 35, admin_flg: 9, gender_id: 2, online_flg: 99, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 53 伊藤悠夏
#   { login_id: "0710", email: "yu.ma.mo.0718@icloud.com", name: "伊藤悠夏", password: "Yumamo1213!?", password_confirmation: "Yumamo1213!?", name_kana: "イトウユウカ", birthday: Date.new(2002, 7, 18), phone: "08080800166", status: 1, introducer_id: 35, admin_flg: 9, gender_id: 2, online_flg: 99, grade_id: 1, created_at: "2023-03-05 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 54 田中空
#   { login_id: "unknown0032", email: "unknown32@gmail.com", name: "田中空", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "タナカソラ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 35, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 55 関田ゆいか
#   { login_id: "unknown0033", email: "unknown33@gmail.com", name: "関田ゆいか", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "セキタユイカ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 35, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 56 佐々木緑碧
#   { login_id: "Simono0421", email: "simono04hiro21@gmail.com", name: "佐々木緑碧", password: "Hotarun0422!?", password_confirmation: "Hotarun0422!?", name_kana: "ササキリオ", birthday: Date.new(2002, 2, 25), phone: "07020070421", status: 1, introducer_id: 36, admin_flg: 9, gender_id: 2, online_flg: 99, grade_id: 99, created_at: "2023-12-10 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 57 柳村康貴
#   { login_id: "unknown0034", email: "unknown34@gmail.com", name: "柳村康貴", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ヤナギムラコウキ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 44, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-05-14 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 58 堀田陽太
#   { login_id: "20020114", email: "hinata114@icloud.com", name: "堀田陽太", password: "Hottahinata114!?", password_confirmation: "Hottahinata114!?", name_kana: "ホッタヒナタ", birthday: Date.new(2002, 1, 14), phone: "09061454507", status: 1, introducer_id: 44, admin_flg: 9, gender_id: 1, online_flg: 99, grade_id: 99, created_at: "2023-12-01 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 59 宮崎綾美
#   { login_id: "2810", email: "ayami1955@icloud.com", name: "宮崎綾美", password: "Miya.1382", password_confirmation: "Miya.1382", name_kana: "ミヤザキアヤミ", birthday: Date.new(1999, 5, 19), phone: "08013634963", status: 1, introducer_id: 48, admin_flg: 9, gender_id: 2, online_flg: 99, grade_id: 99, created_at: "2023-07-08 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 60 藤田剛
#   { login_id: "unknown0035", email: "unknown35@gmail.com", name: "藤田剛", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "フジタゴウ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 48, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-08-26 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 61 干場寧々
#   { login_id: "unknown0036", email: "unknown36@gmail.com", name: "干場寧々", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ホシバネネ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 48, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-09-03 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 62 杉山奈津実
#   { login_id: "unknown0037", email: "unknown37@gmail.com", name: "杉山奈津実", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "スギヤマナツミ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 48, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-04-28 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 63 杉浦彰志
#   { login_id: "337225", email: "sugizou54@gmail.com", name: "杉浦彰志", password: "Mori#2ne", password_confirmation: "Mori#2ne", name_kana: "スギウラショウジ", birthday: Date.new(1998, 2, 15), phone: "08052778684", status: 1, introducer_id: 48, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-10-17 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 64 武井進吾
#   { login_id: "haru5588", email: "tamagawa641@gmail.com", name: "武井進吾", password: "Tamagawa.2303", password_confirmation: "Tamagawa.2303", name_kana: "タケイシンゴ", birthday: Date.new(1992, 7, 28), phone: "09064902362", status: 1, introducer_id: 48, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-09-24 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 65 中山優衣
#   { login_id: "5724", email: "you-i-94@docomo.ne.jp", name: "中山優衣", password: "E@3Tjw&8P", password_confirmation: "E@3Tjw&8P", name_kana: "ナカヤマユイ", birthday: Date.new(1992, 9, 4), phone: "08092966051", status: 1, introducer_id: 48, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-12-20 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 66 臼倉亮太
#   { login_id: "2105", email: "atoyr.unchain_never@icloud.com", name: "臼倉亮太", password: "Ryouta131?", password_confirmation: "Ryouta131?", name_kana: "ウスクラリョウタ", birthday: Date.new(1992, 1, 31), phone: "08066400871", status: 1, introducer_id: 48, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-03-27 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 67 植木胡桃
#   { login_id: "1029", email: "kuu.d-e-b.1.10@docomo.ne.jp", name: "植木胡桃", password: "Kurumi0110!?", password_confirmation: "Kurumi0110!?", name_kana: "ウエキクルミ", birthday: Date.new(2000, 1, 10), phone: "09049777417", status: 1, introducer_id: 48, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-07-01 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 68 駒城拓海
#   { login_id: "KOMA7716", email: "komakitakumi7716@gmail.com", name: "駒城拓海", password: "komaKoma7716!?", password_confirmation: "komaKoma7716!?", name_kana: "コマキ タクミ", birthday: Date.new(2000, 5, 25), phone: "08033621082", status: 1, introducer_id: 48, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-10-31 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 69 佐藤あかね
#   { login_id: "unknown0038", email: "unknown38@gmail.com", name: "佐藤あかね", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "サトウアカネ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 49, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-09-09 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 70 板澤大地
#   { login_id: "unknown0039", email: "unknown39@gmail.com", name: "板澤大地", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "イタザワダイチ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 52, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 71 冨岡佑真
#   { login_id: "unknown0040", email: "unknown40@gmail.com", name: "冨岡佑真", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "トミオカユウマ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 53, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-08-12 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 72 稲垣優太
#   { login_id: "unknown0041", email: "unknown41@gmail.com", name: "稲垣優太", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "イナガキユウタ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 53, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-09-21 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 73 島袋瑞輝
#   { login_id: "unknown0042", email: "unknown42@gmail.com", name: "島袋瑞輝", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "シマブクロミズキ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 53, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-11-21 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 74 志村悠里
#   { login_id: "unknown0043", email: "unknown43@gmail.com", name: "志村悠里", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "シムラユウリ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 53, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-05-07 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 75 髙橋ひかり
#   { login_id: "unknown0044", email: "unknown44@gmail.com", name: "髙橋ひかり", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "タカハシヒカリ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 53, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-04-21 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 76 髙橋幹希
#   { login_id: "unknown0045", email: "unknown45@gmail.com", name: "髙橋幹希", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "タカハシモトキ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 53, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-08-24 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 77 佐藤竜寛
#   { login_id: "tatu", email: "tatu110403@yahoo.co.jp", name: "佐藤竜寛", password: "Tatu1430!?", password_confirmation: "Tatu1430!?", name_kana: "サトウタツヒロ", birthday: Date.new(2002, 4, 30), phone: "08098637968", status: 1, introducer_id: 53, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-12-16 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 78 保坂滉人
#   { login_id: "unknown0046", email: "unknown46@gmail.com", name: "保坂滉人", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ホサカヒロト", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 59, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-10-15 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 79 伊藤栞汰
#   { login_id: "stn34kan", email: "ito.2016.0327@gmail.com", name: "伊藤栞汰", password: "Kanta130304!?", password_confirmation: "Kanta130304!?", name_kana: "イトウカンタ", birthday: Date.new(2001, 3, 4), phone: "08028426794", status: 1, introducer_id: 59, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-12-11 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 80 山田真聡
#   { login_id: "unknown0047", email: "unknown47@gmail.com", name: "山田真聡", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ヤマダマサト", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 71, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-09-21 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 81 西山優哉
#   { login_id: "unknown0048", email: "unknown48@gmail.com", name: "西山優哉", password: "Unknown!?", password_confirmation: "Unknown!?", name_kana: "ニシヤマユウヤ", birthday: Date.new(1990, 1, 1), phone: "11100001111", status: 9, introducer_id: 71, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-09-29 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 82 八木梨々亜
#   { login_id: "0527ygiiiin", email: "0527yagiiiin@gmail.com", name: "八木梨々亜", password: "Ygrra0527!?", password_confirmation: "Ygrra0527!?", name_kana: "ヤギリリア", birthday: Date.new(1998, 5, 27), phone: "08033621082", status: 1, introducer_id: 48, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-05-28 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 83 江良弘希
#   { login_id: "2659", email: "jianglianghongxi@gmail.com", name: "江良弘希", password: "Erakoki5522@", password_confirmation: "Erakoki5522@", name_kana: "エラコウキ", birthday: Date.new(2002, 12, 29), phone: "09068325522", status: 1, introducer_id: 3, admin_flg: 9, gender_id: 1, online_flg: 9, grade_id: 99, created_at: "2023-11-14 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 84 余吾美咲
#   { login_id: "misaki1208", email: "misaki_y.1208@i.softbank.jp", name: "余吾美咲", password: "3Misaki12!?", password_confirmation: "3Misaki12!?", name_kana: "ヨゴミサキ", birthday: Date.new(2000, 3, 12), phone: "08043246778", status: 1, introducer_id: 1, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 1, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 85 丹羽早紀
#   { login_id: "sk99bty", email: "sk_99bty@yahoo.co.jp", name: "丹羽早紀", password: "Ssks2@7", password_confirmation: "Ssks2@7", name_kana: "ニワサキ", birthday: Date.new(1999, 7, 21), phone: "07092910836", status: 1, introducer_id: 84, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-07-28 00:00:00", updated_at: nil, incentive_id: 1 },
#   # id: 86 林丹乙
#   { login_id: "Makomako884", email: "mako-884@ezweb.ne.jp", name: "林丹乙", password: "Makoto0321!?", password_confirmation: "Makoto0321!?", name_kana: "ハヤシマコト", birthday: Date.new(2000, 3, 21), phone: "09081659906", status: 1, introducer_id: 84, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-06-20 00:00:00", updated_at: nil, incentive_id: 2 },
#   # id: 87 河路くるみ
#   { login_id: "0823", email: "k.tennis0823@gmail.com", name: "河路くるみ", password: "K_u2327ru!?", password_confirmation: "K_u2327ru!?", name_kana: "カワジクルミ", birthday: Date.new(2003, 8, 23), phone: "08082575549", status: 1, introducer_id: 84, admin_flg: 9, gender_id: 2, online_flg: 9, grade_id: 99, created_at: "2023-02-23 00:00:00", updated_at: nil, incentive_id: 2 }
# ]

# relation_ships = [
#   {parent_id: 1, child_id: 2, created_at: Time.current, updated_at: nil},
#   {parent_id: 1, child_id: 3, created_at: Time.current, updated_at: nil},
#   {parent_id: 1, child_id: 4, created_at: Time.current, updated_at: nil},
#   {parent_id: 1, child_id: 84, created_at: Time.current, updated_at: nil},
#   {parent_id: 2, child_id: 5, created_at: Time.current, updated_at: nil},
#   {parent_id: 2, child_id: 6, created_at: Time.current, updated_at: nil},
#   {parent_id: 2, child_id: 7, created_at: Time.current, updated_at: nil},
#   {parent_id: 2, child_id: 8, created_at: Time.current, updated_at: nil},
#   {parent_id: 2, child_id: 9, created_at: Time.current, updated_at: nil},
#   {parent_id: 4, child_id: 10, created_at: Time.current, updated_at: nil},
#   {parent_id: 4, child_id: 11, created_at: Time.current, updated_at: nil},
#   {parent_id: 4, child_id: 12, created_at: Time.current, updated_at: nil},
#   {parent_id: 4, child_id: 13, created_at: Time.current, updated_at: nil},
#   {parent_id: 4, child_id: 14, created_at: Time.current, updated_at: nil},
#   {parent_id: 4, child_id: 15, created_at: Time.current, updated_at: nil},
#   {parent_id: 4, child_id: 16, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 17, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 18, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 19, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 20, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 21, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 22, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 23, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 24, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 25, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 26, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 27, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 28, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 29, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 30, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 31, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 32, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 33, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 34, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 35, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 36, created_at: Time.current, updated_at: nil},
#   {parent_id: 3, child_id: 83, created_at: Time.current, updated_at: nil},
#   {parent_id: 7, child_id: 37, created_at: Time.current, updated_at: nil},
#   {parent_id: 7, child_id: 38, created_at: Time.current, updated_at: nil},
#   {parent_id: 7, child_id: 39, created_at: Time.current, updated_at: nil},
#   {parent_id: 7, child_id: 40, created_at: Time.current, updated_at: nil},
#   {parent_id: 7, child_id: 41, created_at: Time.current, updated_at: nil},
#   {parent_id: 7, child_id: 42, created_at: Time.current, updated_at: nil},
#   {parent_id: 13, child_id: 43, created_at: Time.current, updated_at: nil},
#   {parent_id: 13, child_id: 44, created_at: Time.current, updated_at: nil},
#   {parent_id: 15, child_id: 45, created_at: Time.current, updated_at: nil},
#   {parent_id: 15, child_id: 46, created_at: Time.current, updated_at: nil},
#   {parent_id: 16, child_id: 47, created_at: Time.current, updated_at: nil},
#   {parent_id: 16, child_id: 48, created_at: Time.current, updated_at: nil},
#   {parent_id: 17, child_id: 49, created_at: Time.current, updated_at: nil},
#   {parent_id: 17, child_id: 50, created_at: Time.current, updated_at: nil},
#   {parent_id: 34, child_id: 51, created_at: Time.current, updated_at: nil},
#   {parent_id: 35, child_id: 52, created_at: Time.current, updated_at: nil},
#   {parent_id: 35, child_id: 53, created_at: Time.current, updated_at: nil},
#   {parent_id: 35, child_id: 54, created_at: Time.current, updated_at: nil},
#   {parent_id: 35, child_id: 55, created_at: Time.current, updated_at: nil},
#   {parent_id: 36, child_id: 56, created_at: Time.current, updated_at: nil},
#   {parent_id: 44, child_id: 57, created_at: Time.current, updated_at: nil},
#   {parent_id: 44, child_id: 58, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 59, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 60, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 61, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 62, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 63, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 64, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 65, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 66, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 67, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 68, created_at: Time.current, updated_at: nil},
#   {parent_id: 48, child_id: 82, created_at: Time.current, updated_at: nil},
#   {parent_id: 49, child_id: 69, created_at: Time.current, updated_at: nil},
#   {parent_id: 52, child_id: 70, created_at: Time.current, updated_at: nil},
#   {parent_id: 53, child_id: 71, created_at: Time.current, updated_at: nil},
#   {parent_id: 53, child_id: 72, created_at: Time.current, updated_at: nil},
#   {parent_id: 53, child_id: 73, created_at: Time.current, updated_at: nil},
#   {parent_id: 53, child_id: 74, created_at: Time.current, updated_at: nil},
#   {parent_id: 53, child_id: 75, created_at: Time.current, updated_at: nil},
#   {parent_id: 53, child_id: 76, created_at: Time.current, updated_at: nil},
#   {parent_id: 53, child_id: 77, created_at: Time.current, updated_at: nil},
#   {parent_id: 59, child_id: 78, created_at: Time.current, updated_at: nil},
#   {parent_id: 59, child_id: 79, created_at: Time.current, updated_at: nil},
#   {parent_id: 71, child_id: 80, created_at: Time.current, updated_at: nil},
#   {parent_id: 71, child_id: 81, created_at: Time.current, updated_at: nil},
#   {parent_id: 84, child_id: 85, created_at: Time.current, updated_at: nil},
#   {parent_id: 84, child_id: 86, created_at: Time.current, updated_at: nil},
#   {parent_id: 84, child_id: 87, created_at: Time.current, updated_at: nil}
# ]

# user_addresses = [
#   # id: 1 鈴木晴也
#   { user_id: 1, zip_str3: "108", zip_str4: "0075", ken: "東京都", city: "港区港南4-6-5-3404", other_address: nil },
#   # id: 2 篠本拓海
#   { user_id: 2, zip_str3: "136", zip_str4: "0071", ken: "東京都", city: "江東区亀戸4-40-1", other_address: "ハーモニーレジデンス東京イーストゲート503" },
#   # id: 3 細谷菜奈
#   { user_id: 3, zip_str3: "162", zip_str4: "0063", ken: "東京都", city: "新宿区市谷薬王寺町80-1", other_address: "オアーゼ新宿市谷薬王寺111" },
#   # id: 4 山田尚登
#   { user_id: 4, zip_str3: "252", zip_str4: "1116", ken: "神奈川県", city: "綾瀬市落合北4-15-18", other_address: nil },
#   # id: 5 尾塩彩乃　
#   { user_id: 5, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 6 本間紗矢香　
#   { user_id: 6, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 7 奈良亜香希
#   { user_id: 7, zip_str3: "176", zip_str4: "0005", ken: "東京都", city: "練馬区旭丘1-60-7-1", other_address: "ヴィータローザ江古田209" },
#   # id: 8 大島優希　
#   { user_id: 8, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 9 伊藤美紀　
#   { user_id: 9, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 10 乗田愛菜　
#   { user_id: 10, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 11 南杜萌　
#   { user_id: 11, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 12 三改木穂乃　
#   { user_id: 12, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 13 酒井響己
#   { user_id: 13, zip_str3: "232", zip_str4: "0064", ken: "神奈川県", city: "横浜市南区別所3-12-13", other_address: "パークホームズ弐番館110号室" },
#   # id: 14 本間千尋
#   { user_id: 14, zip_str3: "143", zip_str4: "0015", ken: "神奈川県", city: "大田区大森西6-2-8-212", other_address: nil },
#   # id: 15 鴨作瑠美
#   { user_id: 15, zip_str3: "277", zip_str4: "0075", ken: "千葉県", city: "柏市南柏中央２－２", other_address: "リブリ・クホメ 301号室" },
#   # id: 16 坂妻永遠
#   { user_id: 16, zip_str3: "204", zip_str4: "0002", ken: "東京都", city: "清瀬市旭が丘1丁目622番地12号", other_address: nil },
#   # id: 17 前田光成
#   { user_id: 17, zip_str3: "251", zip_str4: "0001", ken: "神奈川県", city: "藤沢市西富510", other_address: nil },
#   # id: 18 菊池晃也
#   { user_id: 18, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 19 落合悠吏
#   { user_id: 19, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 20 佐野悠翔
#   { user_id: 20, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 21 木村健太
#   { user_id: 21, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 22 髙橋亮平
#   { user_id: 22, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 23 辺戸嘉胤
#   { user_id: 23, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 24 鈴木航輔
#   { user_id: 24, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 25 鈴木純輝
#   { user_id: 25, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 26 及川陸
#   { user_id: 26, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 27 井上結太
#   { user_id: 27, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 28 成瀬豊
#   { user_id: 28, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 29 鈴木康太
#   { user_id: 29, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 30 長屋拓斗
#   { user_id: 30, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 31 高岡聖也
#   { user_id: 31, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 32 岩間輝太
#   { user_id: 31, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 33 岩永翼
#   { user_id: 33, zip_str3: "245", zip_str4: "0052", ken: "神奈川県", city: "横浜市戸塚区秋葉町57-1", other_address: "秋葉ハイツ2-203" },
#   # id: 34 渡邉大真
#   { user_id: 34, zip_str3: "212", zip_str4: "0056", ken: "神奈川県", city: "川崎市幸区矢上11-16", other_address: nil },
#   # id: 35 国本朝陽
#   { user_id: 35, zip_str3: "170", zip_str4: "0004", ken: "東京都", city: "豊島区北大塚2丁目32-22", other_address: "萬ビル502" },
#   # id: 36 青木史哉
#   { user_id: 36, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 37 倉内未来
#   { user_id: 37, zip_str3: "204", zip_str4: "0001", ken: "東京都", city: "清瀬市下宿1-1-17-102", other_address: nil },
#   # id: 38 堀田大輝
#   { user_id: 38, zip_str3: "238", zip_str4: "0035", ken: "神奈川県", city: "横須賀市池上5-14-34", other_address: nil },
#   # id: 39 中坂元紀
#   { user_id: 39, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 40 楊光
#   { user_id: 40, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 41 佐藤琉聖
#   { user_id: 41, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 42 竹内響
#   { user_id: 42, zip_str3: "352", zip_str4: "0022", ken: "埼玉県", city: "新座市本多1-10-27", other_address: nil },
#   # id: 43 鬼崎愛香
#   { user_id: 43, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 44 今井理乃
#   { user_id: 44, zip_str3: "240", zip_str4: "0002", ken: "神奈川県", city: "横浜市保土ヶ谷区宮田町2丁目157-4", other_address: "モンテ横浜301" },
#   # id: 45 奥平竜司
#   { user_id: 45, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 46 山越迪斗
#   { user_id: 46, zip_str3: "132", zip_str4: "0033", ken: "東京都", city: "江戸川区東小松川2-32-16", other_address: "ラテル太田102" },
#   # id: 47 佐野俊介
#   { user_id: 47, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 48 日比悠斗
#   { user_id: 48, zip_str3: "188", zip_str4: "0013", ken: "東京都", city: "西東京市向台町4-10-30", other_address: "ツインオークス 201" },
#   # id: 49 田邉諒多
#   { user_id: 49, zip_str3: "259", zip_str4: "1117", ken: "神奈川県", city: "伊勢原市東成瀬42-1", other_address: "ヘルフラワーハイツ伊勢原315号" },
#   # id: 50 後藤愛佳
#   { user_id: 50, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 51 中山稜志
#   { user_id: 51, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 52 都丸琳子
#   { user_id: 52, zip_str3: "330", zip_str4: "0042", ken: "埼玉県", city: "さいたま市浦和区木崎4番地6-9", other_address: nil },
#   # id: 53 伊藤悠夏
#   { user_id: 53, zip_str3: "135", zip_str4: "0052", ken: "東京都", city: "江東区潮見2-9-16", other_address: "スクエア潮見501号室" },
#   # id: 54 田中空
#   { user_id: 54, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 55 関田ゆいか
#   { user_id: 55, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 56 佐々木緑碧
#   { user_id: 56, zip_str3: "294", zip_str4: "0312", ken: "千葉県", city: "館山市小沼352", other_address: nil },
#   # id: 57 柳村康貴
#   { user_id: 57, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 58 堀田陽太
#   { user_id: 58, zip_str3: "360", zip_str4: "0635", ken: "埼玉県", city: "熊谷市大麻生979-7", other_address: "ハイマートラオム101" },
#   # id: 59 宮崎綾美
#   { user_id: 59, zip_str3: "134", zip_str4: "0091", ken: "東京都", city: "江戸川区船堀7-17-21", other_address: "コンフォート船堀205" },
#   # id: 60 藤田剛
#   { user_id: 60, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 61 干場寧々
#   { user_id: 61, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 62 杉山奈津実
#   { user_id: 62, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 63 杉浦彰志
#   { user_id: 63, zip_str3: "169", zip_str4: "0073", ken: "東京都", city: "新宿区百人町3-28-5", other_address: "グランドヒルズ204" },
#   # id: 64 武井進吾
#   { user_id: 64, zip_str3: "355", zip_str4: "0352", ken: "埼玉県", city: "比企郡ときがわ町別所69", other_address: nil },
#   # id: 65 中山優衣
#   { user_id: 65, zip_str3: "331", zip_str4: "0046", ken: "埼玉県", city: "さいたま市西区宮前町1061-5", other_address: nil },
#   # id: 66 臼倉亮太
#   { user_id: 66, zip_str3: "337", zip_str4: "0032", ken: "埼玉県", city: "さいたま市見沼区東新井227-2", other_address: nil },
#   # id: 67 植木胡桃
#   { user_id: 67, zip_str3: "150", zip_str4: "0011", ken: "東京都", city: "渋谷区東1丁目24番9号", other_address: "平野ハイム206号室" },
#   # id: 68 駒城拓海
#   { user_id: 68, zip_str3: "350", zip_str4: "1147", ken: "埼玉県", city: "川越市諏訪町15-15", other_address: "諏訪コーポ102" },
#   # id: 69 佐藤あかね
#   { user_id: 69, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 70 板澤大地
#   { user_id: 70, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 71 冨岡佑真
#   { user_id: 71, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 72 稲垣優太
#   { user_id: 72, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 73 島袋瑞輝
#   { user_id: 73, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 74 志村悠里
#   { user_id: 74, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 75 髙橋ひかり
#   { user_id: 75, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 76 髙橋幹希
#   { user_id: 76, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 77 佐藤竜寛
#   { user_id: 77, zip_str3: "273", zip_str4: "0046", ken: "千葉県", city: "船橋市上山町2-368-15", other_address: nil },
#   # id: 78 保坂滉人
#   { user_id: 78, zip_str3: "273", zip_str4: "0046", ken: "千葉県", city: "船橋市上山町2-368-15", other_address: nil },
#   # id: 79 伊藤栞汰
#   { user_id: 79, zip_str3: "133", zip_str4: "0061", ken: "東京都", city: "江戸川区篠崎町1丁目18-29", other_address: "レオパレスRyu203" },
#   # id: 80 山田真聡
#   { user_id: 80, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 81 西山優哉
#   { user_id: 81, zip_str3: "000", zip_str4: "1111", ken: "東京都", city: "新宿区市谷薬王寺町", other_address: nil },
#   # id: 82 八木梨々亜
#   { user_id: 82, zip_str3: "221", zip_str4: "0014", ken: "神奈川県", city: "横浜市神奈川区入江1-34-30", other_address: "クアドリフォリオ2 201" },
#   # id: 83 江良弘希
#   { user_id: 83, zip_str3: "164", zip_str4: "0011", ken: "東京都", city: "中野区中央4-54-9", other_address: "SOUTHWINDOW301号室" },
#   # id: 84 余吾美咲
#   { user_id: 84, zip_str3: "480", zip_str4: "0202", ken: "愛知県", city: "西春日井郡豊山町豊場諏訪263", other_address: nil },
#   # id: 85 丹羽早紀
#   { user_id: 85, zip_str3: "504", zip_str4: "0926", ken: "岐阜県", city: "各務原市上中屋町1-72", other_address: nil },
#   # id: 86 林丹乙
#   { user_id: 86, zip_str3: "472", zip_str4: "0007", ken: "愛知県", city: "知立市牛田町前田7-3", other_address: "A.CITY牛田215" },
#   # id: 87 河路くるみ
#   { user_id: 87, zip_str3: "492", zip_str4: "8229", ken: "愛知県", city: "稲沢市稲島8-87-1", other_address: "ティアラC106" }
# ]

# user_banks = [
#   # id: 1 鈴木晴也
#   { user_id: 1, bank_name: "三菱UFJ銀行", account_type: 1, branch_name: "横浜駅前支店", branch_number: "251", account_number_hash: "2138328", account_number_tail: "*****328", account_holder: "SUZUKI SEIYA" },
#   # id: 2 篠本拓海
#   { user_id: 2, bank_name: "三井住友銀行", account_type: 1, branch_name: "国領支店", branch_number: "681", account_number_hash: "6812184", account_number_tail: "*****184", account_holder: "SHINOMOTO TAKUYA" },
#   # id: 3 細谷菜奈
#   { user_id: 3, bank_name: "三井住友銀行", account_type: 1, branch_name: "国分寺支店", branch_number: "836", account_number_hash: "2337420", account_number_tail: "*****420", account_holder: "HOSOYA NANA" },
#   # id: 4 山田尚登
#   { user_id: 4, bank_name: "三菱UFJ", account_type: 1, branch_name: "大和支店", branch_number: "260", account_number_hash: "1057007", account_number_tail: "*****007", account_holder: "YAMADA NAOTO" },
#   # id: 5 尾塩彩乃
#   { user_id: 5, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "ASHIO AYANO" },
#   # id: 6 本間紗矢香　
#   { user_id: 6, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "HONMA SAYAKA" },
#   # id: 7 奈良亜香希
#   { user_id: 7, bank_name: "りそな銀行", account_type: 1, branch_name: "東青梅支店", branch_number: "771", account_number_hash: "4697914", account_number_tail: "*****914", account_holder: "NARA AKANE" },
#   # id: 8 大島優希　
#   { user_id: 8, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "OOSHIMA YUKI" },
#   # id: 9 伊藤美紀　
#   { user_id: 9, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "ITO YUKI" },
#   # id: 10 乗田愛菜　
#   { user_id: 10, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "TOITA MANA" },
#   # id: 11 南杜萌　
#   { user_id: 11, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "MINAMI TOMOE" },
#   # id: 12 三改木穂乃　
#   { user_id: 12, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "MISOROGI HONO" },
#   # id: 13 酒井響己
#   { user_id: 13, bank_name: "ゆうちょ銀行", account_type: 1, branch_name: "〇二八", branch_number: "028", account_number_hash: "5290394", account_number_tail: "*****394", account_holder: "SAKAI HIBIKI" },
#   # id: 14 本間千尋
#   { user_id: 14, bank_name: "芝信用金庫", account_type: 1, branch_name: "梅屋敷支店", branch_number: "014", account_number_hash: "0071620", account_number_tail: "*****620", account_holder: "HONMA CHIHIRO" },
#   # id: 15 鴨作瑠美
#   { user_id: 15, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "KAMOSAKU RUMI" },
#   # id: 16 坂妻永遠
#   { user_id: 16, bank_name: "三井住友銀行", account_type: 1, branch_name: "清瀬支店", branch_number: "849", account_number_hash: "4812791", account_number_tail: "*****791", account_holder: "GOTOU TOWA" },
#   # id: 17 前田光成
#   { user_id: 17, bank_name: "楽天銀行", account_type: 1, branch_name: "ポップ支店", branch_number: "243", account_number_hash: "1415740", account_number_tail: "*****740", account_holder: "MAEDA KOUSEI" },
#   # id: 18 菊池晃也
#   { user_id: 18, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "KIKUCHI KOUYA" },
#   # id: 19 落合悠吏
#   { user_id: 19, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "OCHIAI YUURI" },
#   # id: 20 佐野悠翔
#   { user_id: 20, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SANO YUUTO" },
#   # id: 21 木村健太
#   { user_id: 21, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "KIMURA KENTA" },
#   # id: 22 髙橋亮平
#   { user_id: 22, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "TAKAHASHI RYUUHEI" },
#   # id: 23 辺戸嘉胤
#   { user_id: 23, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "TODO YOSHITSUGU" },
#   # id: 24 鈴木航輔
#   { user_id: 24, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SUZUKI KOUSUKE" },
#   # id: 25 鈴木純輝
#   { user_id: 25, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "KIKUCHI JUNKI" },
#   # id: 26 及川陸
#   { user_id: 26, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "OYOKAWA RIKU" },
#   # id: 27 井上結太
#   { user_id: 27, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "INOUE YUUTA" },
#   # id: 28 成瀬豊
#   { user_id: 28, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "NARUSE YUTAKA" },
#   # id: 29 鈴木康太
#   { user_id: 29, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SUZUKI KOUTA" },
#   # id: 30 長屋拓斗
#   { user_id: 30, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "NAGAYA TAKUTO" },
#   # id: 31 高岡聖也
#   { user_id: 31, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "TAKAOKA SEIYA" },
#   # id: 32 岩間輝太
#   { user_id: 32, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "IWAMA KOUTA" },
#   # id: 33 岩永翼
#   { user_id: 33, bank_name: "横浜銀行", account_type: 1, branch_name: "東戸塚駅前支店", branch_number: "327", account_number_hash: "6228342", account_number_tail: "*****342", account_holder: "IWANAGA TSUBASA" },
#   # id: 34 渡邉大真
#   { user_id: 34, bank_name: "横浜銀行", account_type: 1, branch_name: "元住吉支店", branch_number: "831", account_number_hash: "6109806", account_number_tail: "*****806", account_holder: "WATANABE HIROMA" },
#   # id: 35 国本朝陽
#   { user_id: 35, bank_name: "中国労働金庫", account_type: 1, branch_name: "下松支店", branch_number: "744", account_number_hash: "6465859", account_number_tail: "*****859", account_holder: "KUNIMOTO ASAHI" },
#   # id: 36 青木史哉
#   { user_id: 36, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "AOKI HUMIYA" },
#   # id: 37 倉内未来
#   { user_id: 37, bank_name: "りそな銀行", account_type: 1, branch_name: "清瀬支店", branch_number: "781", account_number_hash: "4356866", account_number_tail: "*****866", account_holder: "KURAUCHI MIKU" },
#   # id: 38 堀田大輝
#   { user_id: 38, bank_name: "湘南信用金庫", account_type: 1, branch_name: "池上支店", branch_number: "019", account_number_hash: "0320943", account_number_tail: "*****943", account_holder: "HODDA DAIKI" },
#   # id: 39 中坂元紀
#   { user_id: 39, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "NAKASAKA MOTONORI" },
#   # id: 40 楊光
#   { user_id: 40, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "YOUKOU" },
#   # id: 41 佐藤琉聖
#   { user_id: 41, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SATOU RYUSEI" },
#   # id: 42 竹内響
#   { user_id: 42, bank_name: "ゆうちょ銀行", account_type: 1, branch_name: "〇三九", branch_number: "039", account_number_hash: "8211978", account_number_tail: "*****978", account_holder: "TAKEUCHI REI" },
#   # id: 43 鬼崎愛香
#   { user_id: 43, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "ONIZAKI AIKA" },
#   # id: 44 今井理乃
#   { user_id: 44, bank_name: "横浜銀行", account_type: 1, branch_name: "横浜駅前支店", branch_number: "383", account_number_hash: "6676488", account_number_tail: "*****488", account_holder: "IMAI RINO" },
#   # id: 45 奥平竜司
#   { user_id: 45, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "OKUDAIRA RYUJI" },
#   # id: 46 山越迪斗
#   { user_id: 46, bank_name: "ゆうちょ銀行", account_type: 1, branch_name: "九〇二", branch_number: "902", account_number_hash: "1332821", account_number_tail: "*****821", account_holder: "YAMAKOSHI HUMITO" },
#   # id: 47 佐野俊介
#   { user_id: 47, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SANO SYUNSUKE" },
#   # id: 48 日比悠斗
#   { user_id: 48, bank_name: "三井住友銀行", account_type: 1, branch_name: "清瀬支店", branch_number: "849", account_number_hash: "4883598", account_number_tail: "*****598", account_holder: "HIBI YUTO" },
#   # id: 49 田邉諒多
#   { user_id: 49, bank_name: "auじぶん銀行", account_type: 1, branch_name: "かわ支店", branch_number: "112", account_number_hash: "0639050", account_number_tail: "*****050", account_holder: "TANABE RYOTA" },
#   # id: 50 後藤愛佳
#   { user_id: 50, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "GOTOU AIKA" },
#   # id: 51 中山稜志
#   { user_id: 51, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "NAKAYAMA RYOJI" },
#   # id: 52 都丸琳子
#   { user_id: 52, bank_name: "みずほ銀行", account_type: 1, branch_name: "大宮支店", branch_number: "447", account_number_hash: "3095659", account_number_tail: "*****659", account_holder: "TOMARU RINKO" },
#   # id: 53 伊藤悠夏
#   { user_id: 53, bank_name: "三菱東京UFJ銀行", account_type: 1, branch_name: "津田沼支店", branch_number: "016", account_number_hash: "1887424", account_number_tail: "*****424", account_holder: "ITOU YUUKA" },
#   # id: 54 田中空
#   { user_id: 54, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "TANAKA SORA" },
#   # id: 55 関田ゆいか
#   { user_id: 55, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SEKITRA YUIKA" },
#   # id: 56 佐々木緑碧
#   { user_id: 56, bank_name: "楽天銀行", account_type: 1, branch_name: "ハウス支店", branch_number: "231", account_number_hash: "2705888", account_number_tail: "*****888", account_holder: "SASAKI RIO" },
#   # id: 57 柳村康貴
#   { user_id: 57, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "YANAGIMURA KOUUKI" },
#   # id: 58 堀田陽太
#   { user_id: 58, bank_name: "埼玉りそな銀行", account_type: 1, branch_name: "深谷支店", branch_number: "580", account_number_hash: "4873890", account_number_tail: "*****890", account_holder: "HOTTA HINATA" },
#   # id: 59 宮崎綾美
#   { user_id: 59, bank_name: "ゆうちょ銀行", account_type: 1, branch_name: "一一八", branch_number: "118", account_number_hash: "1092021", account_number_tail: "*****021", account_holder: "MIYAZAKI AYAMI" },
#   # id: 60 藤田剛
#   { user_id: 60, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "HUJITA GOU" },
#   # id: 61 干場寧々
#   { user_id: 61, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "HOSHIBA NENE" },
#   # id: 62 杉山奈津実
#   { user_id: 62, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SUGIYAMA NENE" },
#   # id: 63 杉浦彰志
#   { user_id: 63, bank_name: "みずほ銀行", account_type: 1, branch_name: "新宿支店", branch_number: "240", account_number_hash: "3050523", account_number_tail: "*****523", account_holder: "SUGIURA SYOUJI" },
#   # id: 64 武井進吾
#   { user_id: 64, bank_name: "埼玉りそな銀行", account_type: 1, branch_name: "越生毛呂山支店", branch_number: "589", account_number_hash: "4464956", account_number_tail: "*****956", account_holder: "TAKEI SHINGO" },
#   # id: 65 中山優衣
#   { user_id: 65, bank_name: "埼玉りそな銀行", account_type: 1, branch_name: "日進支店", branch_number: "0017", account_number_hash: "4165152", account_number_tail: "*****956", account_holder: "NAKAYAMA YUI" },
#   # id: 66 臼倉亮太
#   { user_id: 66, bank_name: "埼玉県信用金庫", account_type: 1, branch_name: "片柳支店", branch_number: "不明", account_number_hash: "1611883", account_number_tail: "*****883", account_holder: "USUKURA RYOTA" },
#   # id: 67 植木胡桃
#   { user_id: 67, bank_name: "愛媛銀行", account_type: 1, branch_name: "泉川支店", branch_number: "204", account_number_hash: "05826730", account_number_tail: "*****730", account_holder: "IEKI KURUMI" },
#   # id: 68 駒城拓海
#   { user_id: 68, bank_name: "ゆうちょ銀行", account_type: 1, branch_name: "〇六八", branch_number: "608", account_number_hash: "05115341", account_number_tail: "*****341", account_holder: "KOMAKI TAKUYA" },
#   # id: 69 佐藤あかね
#   { user_id: 69, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SAYOU AKANE" },
#   # id: 70 板澤大地
#   { user_id: 70, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "ITAZAWA DAICHI" },
#   # id: 71 冨岡佑真
#   { user_id: 71, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "TOMIOKA YUUMA" },
#   # id: 72 稲垣優太
#   { user_id: 72, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "ITAGAKI YUUTA" },
#   # id: 73 島袋瑞輝
#   { user_id: 73, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SHIMABUKURO MIZUKI" },
#   # id: 74 志村悠里
#   { user_id: 74, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "SHIMURA YUURI" },
#   # id: 75 髙橋ひかり
#   { user_id: 75, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "TAKAHASHI HIKARI" },
#   # id: 76 髙橋幹希
#   { user_id: 76, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "TAKAHASHI MOTOKI" },
#   # id: 77 佐藤竜寛
#   { user_id: 77, bank_name: "PayPay銀行", account_type: 1, branch_name: "ツバメ支店", branch_number: "006", account_number_hash: "2639624", account_number_tail: "*****624", account_holder: "SATOU TATSUHIRO" },
#   # id: 78 保坂滉人
#   { user_id: 78, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "HOSAKA HIROTO" },
#   # id: 79 伊藤栞汰
#   { user_id: 79, bank_name: "東邦銀行", account_type: 1, branch_name: "郡山卸町支店", branch_number: "212", account_number_hash: "0509", account_number_tail: "*****012", account_holder: "ITO KANTA" },
#   # id: 80 山田真聡
#   { user_id: 80, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "YAMADA MASATO" },
#   # id: 81 西山優哉
#   { user_id: 81, bank_name: "不明", account_type: 1, branch_name: "不明", branch_number: "000", account_number_hash: "1110000", account_number_tail: "*****000", account_holder: "NISHIYAMA YUUYA" },
#   # id: 82 八木梨々亜
#   { user_id: 82, bank_name: "ゆうちょ銀行", account_type: 1, branch_name: "〇六八", branch_number: "068", account_number_hash: "14047", account_number_tail: "*****811", account_holder: "YAGI RIRIA" },
#   # id: 83 江良弘希
#   { user_id: 83, bank_name: "ゆうちょ銀行", account_type: 1, branch_name: "一四三", branch_number: "143", account_number_hash: "1325471", account_number_tail: "*****471", account_holder: "ERA KOUKI" },
#   # id: 84 余吾美咲
#   { user_id: 84, bank_name: "三菱UFJ銀行", account_type: 1, branch_name: "西春支店", branch_number: "237", account_number_hash: "0233571", account_number_tail: "*****571", account_holder: "EGO MISAKI" },
#   # id: 85 丹羽早紀
#   { user_id: 85, bank_name: "PayPay銀行", account_type: 1, branch_name: "ハヤブサ支店", branch_number: "003", account_number_hash: "6553890", account_number_tail: "*****890", account_holder: "NIWA SAKI" },
#   # id: 86 林丹乙
#   { user_id: 86, bank_name: "三井住友銀行", account_type: 1, branch_name: "加古川支店", branch_number: "431", account_number_hash: "5931412", account_number_tail: "*****412", account_holder: "HAYASHI MAKOTO" },
#   # id: 87 河路くるみ
#   { user_id: 87, bank_name: "ゆうちょ銀行", account_type: 1, branch_name: "二〇八", branch_number: "208", account_number_hash: "1259103", account_number_tail: "*****103", account_holder: "KAWAJI KURUMI" }
# ]

# rewards = [
#   user_id: 44, incentive_id: 2, incentive_price: nil,
#   user_id: 13, incentive_id: 4, incentive_price: nil,
#   user_id: 36, incentive_id: 2, incentive_price: nil,
#   user_id: 3, incentive_id: 4, incentive_price: nil,
#   user_id: 53, incentive_id: 1, incentive_price: nil,
#   user_id: 35, incentive_id: 3, incentive_price: nil,
#   user_id: 3, incentive_id: 7, incentive_price: nil,
#   user_id: 59, incentive_id: 2, incentive_price: nil,
#   user_id: 48, incentive_id: 4, incentive_price: nil,
#   user_id: 48, incentive_id: 2, incentive_price: nil,
#   user_id: 16, incentive_id: 4, incentive_price: nil
# ]

Incentive.create!(incentives)
LearnCategory.create!(learn_categories)
Grade.create!(grades)
# User.create!(users)
# UserAddress.create!(user_addresses)
# UserBank.create!(user_banks)
# Relationship.create!(relation_ships)
# Reward.create!(rewards)
