# frozen_string_literal: true

# lib/line_notifier.rb
require "net/http"
require "uri"
require "json"

module LineNotifier
  LINE_NOTIFY_URL = "https://notify-api.line.me/api/notify"

  def self.notify_error error
    error_line_notify_token = ENV.fetch("ERROR_LINE_NOTIFY_TOKEN", nil)
    return unless Rails.env.production? # 本番環境のみ実行

    message = format_message(error)
    uri = URI.parse(LINE_NOTIFY_URL)
    request = Net::HTTP::Post.new(uri)
    request["Authorization"] = "Bearer #{error_line_notify_token}"
    request.set_form_data(message:)

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == "https") do |http|
      http.request(request)
    end

    handle_response(response)
  end

  def self.notify_service_contact contact_message
    service_contact_line_notify_token = ENV.fetch("SERVICE_CONTACT_LINE_NOTIFY_TOKEN", nil)
    return unless Rails.env.production? # 本番環境のみ実行

    message = contact_format_message contact_message
    uri = URI.parse(LINE_NOTIFY_URL)
    request = Net::HTTP::Post.new(uri)
    request["Authorization"] = "Bearer #{service_contact_line_notify_token}"
    request.set_form_data(message:)

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == "https") do |http|
      http.request(request)
    end

    handle_response(response)
  end

  def self.notify_tmp_entry message
    entryline_notify_token = ENV.fetch("ENTRYLINE_NOTIFY_TOKEN", nil)
    return unless Rails.env.production? # 本番環境のみ実行

    send_message = tmp_entry_format_message message
    uri = URI.parse(LINE_NOTIFY_URL)
    request = Net::HTTP::Post.new(uri)
    request["Authorization"] = "Bearer #{entryline_notify_token}"
    request.set_form_data(message: send_message)

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == "https") do |http|
      http.request(request)
    end

    handle_response(response)
  end

  def self.task_send line_send_info
    entryline_notify_token = ENV.fetch("TASK_SEND_NOTIFY_TOKEN", nil)
    # return unless Rails.env.production? # 本番環境のみ実行

    send_message = task_send_line_format line_send_info
    uri = URI.parse(LINE_NOTIFY_URL)
    request = Net::HTTP::Post.new(uri)
    request["Authorization"] = "Bearer #{entryline_notify_token}"
    request.set_form_data(message: send_message)

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == "https") do |http|
      http.request(request)
    end

    handle_response(response)
  end

  def self.tmp_entry_format_message message
    user_name = message.name
    case message.incentive_id.to_i
    when 1
      entry_plan = "ノーマルコース（2ヶ月）"
    when 2
      entry_plan = "デラックスコース（6ヶ月）"
    when 3
      entry_plan = "ラグジュアリーコース（12ヶ月）"
    end
    introduce_user = User.find(message.introducer_id).name
    salse_user = User.find(message.sales_id).name
    entry_created_at = Time.zone.now.strftime("%Y/%m/%d %H:%M:%S")

    <<~MESSAGE

      【仮登録通知】
      仮登録が完了しました。
      仮登録ユーザーは以下の通りです。

      名前：#{user_name}
      登録プラン：#{entry_plan}
      紹介者：#{introduce_user}
      営業担当者：#{salse_user}
      仮登録日時：#{entry_created_at}
    MESSAGE
  end

  def self.contact_format_message contact_message
    <<~MESSAGE

      【#{contact_message[:service_name]}の問い合わせ】

      名前：#{contact_message[:name]}
      メールアドレス：#{contact_message[:email]}
      問い合わせ内容：
      #{contact_message[:message]}
    MESSAGE
  end

  def self.task_send_line_format line_send_info
    <<~MESSAGE

      【#{line_send_info[:user_name]}さんから課題提出がありました】
      名前： #{line_send_info[:user_name]}
      課題提出のカテゴリー： #{line_send_info[:task_category_name]}
      #{line_send_info[:task_category_name]}の種類： #{line_send_info[:task_learn_name]}

      課題提出内容：
      #{line_send_info[:task_comment]}
    MESSAGE
  end

  def self.format_message error
    backtrace_info = error.backtrace_locations&.first
    location = if backtrace_info
                 "#{backtrace_info.path}　#{backtrace_info.lineno}行目"
               else
                 "バックトレース情報なし"
               end

    <<~MESSAGE

      エラーが発生しました:
      #{error.message}

      発生場所:
      #{location}

      発生時刻:
      #{Time.current.strftime('%Y/%m/%d %H:%M:%S')}

      バックトレースの先頭10行:
      #{error.backtrace.take(10).join("\n")}
    MESSAGE
  end

  def self.handle_response response
    case response
    when Net::HTTPSuccess, Net::HTTPRedirection
      JSON.parse(response.body)
    else
      response.value
    end
  end
end
