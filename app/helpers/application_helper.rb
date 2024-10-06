# frozen_string_literal: true

module ApplicationHelper
  require "date"

  QUOTES = [
    "今日も頑張っていこうアル〜！",
    "朝ごはん、しっかり食べたアルか？",
    "お疲れ様アル！ゆっくり休むアルよ。",
    "何か困ったことがあれば、いつでも話すアルよ。",
    "お腹空いたアルか？何か美味しいもの食べに行くアル！",
    "今日は仕事が早く終わったアル！ちょっと一息つくアルよ。",
    "友達に会いに行くアルか？楽しんできてアルよ！",
    "体調大丈夫アルか？無理しないで休むアルよ。",
    "資産が順調に増えてるアル、すごいアルね！",
    "ちゃんと計画立てて進めてるアル、見事アルよ！",
    "その判断、さすがアル！賢い投資アルね！",
    "いいタイミングで動いたアル、天才アルか？",
    "もうすぐゴールアル！このまま続けるアルよ！",
    "その調子で進めば、成功間違いないアル！",
    "苦労が報われたアル、頑張りが実ってきたアルよ！",
    "その努力、素晴らしいアル！この調子で続けるアルよ！",
    "もうすぐ大きな成果が見えてきてるアル、期待できるアルね！",
    "忍耐が報われる時がきたアル！よく頑張ったアルよ！",
    "まずは小さな一歩から始めるアル、焦らないことが大事アルよ！",
    "リスクを分散させるのがポイントアル、何事もバランスが大切アル。",
    "投資は長期的に見て成長するアル、短期で結果を求めないアルよ。",
    "計画をしっかり立てて、無理のない範囲でやるアル！",
    "情報を集めることも大事アル、新しい知識はいつでも力になるアルよ。",
    "小さな成功でも積み重ねていけば、大きな資産になるアル。",
    "タイミングも大事アル、常にチャンスを見逃さないことが重要アルよ！",
    "感情に左右されないように、冷静に判断することが肝心アル。",
    "計画を定期的に見直して、必要に応じて軌道修正することが大切アルよ。",
    "利益が出たら、それを次の投資に再投資するのも一つの戦略アル。",
    "資産を増やすのに夢中になってるアルか〜？",
    "働かざる者食うべからず。",
    "ピンチの時はチャンスを見るべし。",
    "今日はウイダーinゼリー飲んだアル！",
    "y〜y〜y.山田！アル！",
    "節約もいいけどたまにはご褒美アル。",
    "自分を信じれば何でもできるアル！",
    "君の努力は必ず実るアルよ！",
    "今日は昨日よりもっと強くなるアル！",
    "自分の力を信じることが最強アル！",
    "君はもう十分頑張ってるアル！",
    "他の誰でもない、君が最高アル！",
    "君は君のままで素晴らしいアル！",
    "新しい挑戦は君の力になるアル！",
    "自信を持って、君ならできるアル！",
    "その決断は間違ってないアル！",
    "進む道は自分で選べばいいアル！",
    "君の存在が周りを照らしてるアル！",
    "小さな一歩も大きな成果に繋がるアル！",
    "君の成長は止まらないアル！",
    "周りに惑わされない、君が道を作るアル！",
    "君には無限の可能性があるアル！",
    "諦めない限り失敗はないアル！",
    "挑戦すること自体が素晴らしいアル！",
    "どんなときも君は君のままで輝くアル！",
    "明日はもっと素晴らしい日になるアル！",
    "コツコツ貯めることが成功の鍵アル！",
    "今日の小さな節約が未来を変えるアル！",
    "無駄遣いを減らせば夢に近づくアル！",
    "貯金は自分への最高の投資アル！",
    "一歩一歩、確実に貯まっていくアル！",
    "少しずつでも積み上げれば大きな力になるアル！",
    "我慢することが後で大きな喜びをくれるアル！",
    "貯金は未来の自分を守る武器アル！",
    "今日貯めた分が明日の安心に繋がるアル！",
    "貯めたお金が君の自由を広げるアル！",
    "少しずつの努力が大きな成果を生むアル！",
    "貯金するたびに一歩前進してるアル！",
    "自分の目標に向かって着実に進むアル！",
    "使わなかったお金が未来を輝かせるアル！",
    "節約は賢い選択、君ならできるアル！",
    "今の我慢が未来の大きなご褒美アル！",
    "小さな貯金が大きな安心感を生むアル！",
    "賢い選択で君の未来が変わるアル！",
    "貯金することで、将来の自分にありがとうと言えるアル！",
    "今日の積み重ねが未来の夢を叶えるアル！",
    "大吉アル！今日は最高の日アル！",
    "中吉アル、いいことがありそうアルよ！",
    "小吉アル、少しずつ進むアル！",
    "吉アル、穏やかで幸せな日になるアル！",
    "末吉アル、少しずつ良くなるアル！",
    "凶アル、でも落ち込まないで、成長の時アル！",
    "大大吉アル、奇跡が起きる予感アル！",
    "半吉アル、少し控えめだけど良い日アル！",
    "末凶アル、慎重に動けば大丈夫アル！",
    "吉凶混合アル、バランスを大事にするアル！",
    "超大吉アル！全てが上手くいくアルよ！",
    "中凶アル、少しだけ気をつけて進むアル！",
    "大安吉日アル、今日は何をしても良い日アル！",
    "小凶アル、慎重に過ごせば問題ないアル！",
    "福来る吉アル、幸運が近づいてるアル！"
  ].freeze

  def get_current_path
    request.fullpath
  end

  def page_year_month_include? page, year, month
    if page.present? && year && month
      true
    else
      false
    end
  end

  # 誕生日から年齢を取得
  def calculate_age birthdate
    # 現在の日付を取得
    today = Time.zone.today

    # 現在の年 - 生年月日の年
    age = today.year - birthdate.year

    # 今年の誕生日をまだ迎えていなければ、年齢から1を引く
    age -= 1 if today < birthdate + age.years

    age
  end

  def get_title_color user
    case user&.grade_id
    when 99
      "not_title"
    when 1
      "normal"
    when 2
      "ruby"
    when 3
      "emerald"
    else
      "none"
    end
  end

  def image_url_for user
    return nil unless user.user_image.attached?

    rails_blob_url(user.user_image, only_path: true)
  end

  def get_course_name course_id
    case course_id.to_i
    when 1
      "ノーマルコース"
    when 2
      "デラックスコース"
    when 3
      "ラグジュアリーコース"
    end
  end

  def formatted_amount_with_sign amount
    return amount if amount == 0

    if amount > 0
      "+  #{number_with_delimiter(amount.abs.to_i)}"
    else
      # マイナス記号を取り除き、空白を追加して表示
      "-  #{number_with_delimiter(amount.abs.to_i)}"
    end
  end

  # 予想支出と支出の差額を求めるメソッド
  def expense_budget_price total_amount, expected_amount
    budget_price = expected_amount - total_amount
    formatted_amount_with_sign budget_price
  end

  def expense_reports_budget_price total_amount, expected_amount
    budget_price = expected_amount - total_amount

    return "" if budget_price == 0
    return "amount_price_plus" if budget_price > 0

    "amount_price_minus" if budget_price < 0
  end

  def calculate_budget_deficit expected_amount, actual_expense
    expected_amount.to_i - actual_expense.to_i
  end

  def daily_quote
    # 今日の日付を取得し、ハッシュ化してインデックスを生成
    index = Time.zone.today.yday % QUOTES.length
    QUOTES[index]
  end
end
