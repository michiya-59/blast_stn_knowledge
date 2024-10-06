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

# 支出カテゴリー
expense_category =[
  {name: "衣服", color_code: "#3D9BFF", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "趣味", color_code: "#A325C6", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "交通費", color_code: "#CD6000", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "日用品", color_code: "#25C632", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "美容費", color_code: "#FF006E", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "教育費", color_code: "#93B55F", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "水道光熱費", color_code: "#48D7FF", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "通信費", color_code: "#B5B5B5", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "住居費", color_code: "#FFC635", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current},
  {name: "交際費", color_code: "#F65B5E", expected_amount: nil, user_id: 99999, created_at: Time.current, updated_at: Time.current}
]

income_category = [
  {name: "給与", created_at: Time.current, user_id: 99999, updated_at: Time.current}
]

# Incentive.create!(incentives)
# LearnCategory.create!(learn_categories)
# Grade.create!(grades)
ExpenseCategory.create!(expense_category)
IncomeCategory.create!(income_category)
