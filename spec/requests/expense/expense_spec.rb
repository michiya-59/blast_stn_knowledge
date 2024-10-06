# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Expense::Expenses", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/expense/expense/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/expense/expense/index"
      expect(response).to have_http_status(:success)
    end
  end
end
