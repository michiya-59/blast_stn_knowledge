# frozen_string_literal: true

require "rails_helper"

RSpec.describe "ExpenseModule::Incomes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/expense_module/incomes/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/expense_module/incomes/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/expense_module/incomes/create"
      expect(response).to have_http_status(:success)
    end
  end
end
