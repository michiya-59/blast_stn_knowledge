# frozen_string_literal: true

require "rails_helper"

RSpec.describe Seminar, type: :model do
  describe "講義登録のバリデーションテスト" do
    let!(:seminar){create(:seminar)}
    context "全ての項目が正常な場合" do
      it "登録成功" do
        expect(seminar).to be_valid
      end
    end

    context "年が2022以下の場合" do
      it "登録失敗" do
        seminar.year = 2022
        expect(seminar).not_to be_valid
      end
    end

    context "月が1未満の場合" do
      it "登録失敗" do
        seminar.month = 0
        expect(seminar).not_to be_valid
      end
    end

    context "月が13以上の場合" do
      it "登録失敗" do
        seminar.month = 13
        expect(seminar).not_to be_valid
      end
    end

    context "日が1未満の場合" do
      it "登録失敗" do
        seminar.day = 0
        expect(seminar).not_to be_valid
      end
    end

    context "日が32以上の場合" do
      it "登録失敗" do
        seminar.day = 32
        expect(seminar).not_to be_valid
      end
    end

    context "日が不正な場合（例：2月30日）" do
      it "登録失敗" do
        seminar.month = 2
        seminar.day = 30
        expect(seminar).not_to be_valid
      end
    end

    context "開始時間が終了時間より後の場合" do
      it "登録失敗" do
        seminar.start_time = "15:00"
        seminar.end_time = "14:00"
        expect(seminar).not_to be_valid
      end
    end

    context "日程が過去の場合" do
      it "登録失敗" do
        seminar.year = 2021
        seminar.month = 1
        seminar.day = 1
        expect(seminar).not_to be_valid
      end
    end

    context "titleが空の場合" do
      it "登録失敗" do
        seminar.title = nil
        expect(seminar).not_to be_valid
      end
    end

    context "teacherが空の場合" do
      it "登録失敗" do
        seminar.teacher = nil
        expect(seminar).not_to be_valid
      end
    end

    context "start_timeが空の場合" do
      it "登録失敗" do
        seminar.start_time = nil
        expect(seminar).not_to be_valid
      end
    end

    context "end_timeが空の場合" do
      it "登録失敗" do
        seminar.end_time = nil
        expect(seminar).not_to be_valid
      end
    end

    context "start_timeが不正な形式の場合（例：25:00）" do
      it "登録失敗" do
        seminar.start_time = "25:00"
        expect(seminar).not_to be_valid
      end
    end
  end

  describe ".find_seminars" do
    context "未来の講義を検索する場合" do
      let!(:current_seminar){FactoryBot.create(:seminar, year: Time.zone.now.year.to_i, month: Time.zone.now.month.to_i, day: Time.zone.now.day.to_i)}
      it "未来の講義だけが取得される" do
        seminars = Seminar.find_seminars
        expect(seminars.map(&:id)).to include(current_seminar.id)
      end
    end
  end

  describe ".search_by_year_and_month" do
    context "特定の年月で講義を検索する場合" do
      let!(:seminar_jan){FactoryBot.create(:seminar, year: Time.zone.now.year.to_i + 10, month: 1, day: 1)}
      let!(:seminar_feb){FactoryBot.create(:seminar, year: Time.zone.now.year.to_i + 10, month: 2, day: 1)}
      it "指定した年月の講義だけが取得される" do
        jan_seminars = Seminar.search_by_year_and_month(Time.zone.now.year.to_i + 10, 1)
        expect(jan_seminars).to include seminar_jan
        expect(jan_seminars).not_to include seminar_feb
      end
    end
  end
end
