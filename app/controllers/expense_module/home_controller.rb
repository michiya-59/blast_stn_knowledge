# frozen_string_literal: true

module ExpenseModule
  class HomeController < ApplicationController
    require "ferrum"

    def index
      # 現在の年月を取得
      @current_time = Time.current
      current_month_start = Date.current.beginning_of_month
      current_month_end = Date.current.end_of_month

      @selected_month = params[:month].present? ? params[:month].to_i : Time.current

      expense_categories = combined_categories_for(ExpenseCategory, current_user.id)
      # 予想支出の合計
      @total_expected_amount = expense_categories.sum{|category| category.expected_amount || 0}

      # 支出の合計・収入の合計
      _, @total_expenses_amount, @total_incomes_amount = calculate_difference_price current_user.id, current_month_start, current_month_end
    end

    def search
      @current_time = Time.current
      selected_month = params[:month].to_i
      selected_year = @current_time.year

      @selected_month = if params[:month].present?
                          if params[:month].to_i == @current_time.month
                            # 現在の月であれば、日にちを現在の日にちにする
                            Time.zone.local(@current_time.year, params[:month].to_i, @current_time.day)
                          else
                            # 現在の月でなければ、1日にする
                            Time.zone.local(@current_time.year, params[:month].to_i, 1)
                          end
                        else
                          # params[:month]がない場合は現在の時刻を使う
                          @current_time
                        end

      expense_categories = combined_categories_for(ExpenseCategory, current_user.id)
      # 予想支出の合計
      @total_expected_amount = expense_categories.sum{|category| category.expected_amount || 0}

      current_month_start = Date.new(selected_year, selected_month, 1).beginning_of_month
      current_month_end = current_month_start.end_of_month

      _, @total_expenses_amount, @total_incomes_amount = calculate_difference_price(current_user.id, current_month_start, current_month_end)

      render :index
    end

    def export_pdf
      @current_time = Time.current
      selected_year = @current_time.year

      @selected_month = if params[:month].present?
                          if params[:month].to_i == @current_time.month
                            # 現在の月であれば、日にちを現在の日にちにする
                            Time.zone.local(@current_time.year, params[:month].to_i, @current_time.day)
                          else
                            # 現在の月でなければ、1日にする
                            Time.zone.local(@current_time.year, params[:month].to_i, 1)
                          end
                        else
                          # params[:month]がない場合は現在の時刻を使う
                          @current_time
                        end

      expense_categories = combined_categories_for(ExpenseCategory, current_user.id)
      # 予想支出の合計
      @total_expected_amount = expense_categories.sum{|category| category.expected_amount || 0}
      current_month_start = Date.new(selected_year, @selected_month.month, 1).beginning_of_month
      current_month_end = current_month_start.end_of_month
      # 支出の合計・収入の合計
      _, @total_expenses_amount, @total_incomes_amount = calculate_difference_price(current_user.id, current_month_start, current_month_end)
      @difference_price = @total_incomes_amount - @total_expenses_amount

      @income_infos = Income.total_income_by_category current_user.id, current_month_start, current_month_end
      @expense_infos = Expense.total_expenses_by_category current_user.id, current_month_start, current_month_end
      @expense_info_difference = @total_expected_amount.to_i - @total_expenses_amount.to_i

      @total_expected_amount = @expense_infos.sum{|expense| expense.expected_amount.to_i}
      @total_expenses_amount = @expense_infos.sum{|expense| expense.total_amount.to_i}
      @expense_info_difference = @expense_infos.sum do |expense|
        calculate_budget_deficit(expense.expected_amount, expense.total_amount)
      end

      respond_to do |format|
        format.pdf do
          html = render_to_string(
            template: "expense_module/home/export_pdf",  # ビューのテンプレートを指定
            formats: [:html]
          )

          pdf = html_to_pdf(html)

          send_data pdf, filename: "#{@current_time.year}年#{@selected_month.month}月 収支シート.pdf", type: "application/pdf", disposition: "attachment"

          # テスト時に画面で確認する場合は以下を使用
          # send_data pdf, filename: "#{@current_time.year}年#{@selected_month.month}月 収支シート.pdf", type: "application/pdf", disposition: "inline"
        end
      end
    end

    private

    def calculate_budget_deficit expected_amount, total_amount
      expected_amount.to_i - total_amount.to_i
    end

    def html_to_pdf html
      browser = Ferrum::Browser.new(
        browser_path: "/usr/bin/chromium",
        browser_options: {"no-sandbox": nil}
      )
      page = browser.create_page
      page.command("Emulation.setEmulatedMedia", media: "screen")

      page.content = html

      # cssを指定
      page.add_style_tag(
        content: File.read(Rails.root.join("app/assets/builds/application.css").to_s)
      )
      page.network.wait_for_idle  # ネットワークリクエストが完了するまで待機

      page.pdf(
        format: :A4,
        encoding: :binary,
        scale: 1.2,
        print_background: true
      )
    end
  end
end
