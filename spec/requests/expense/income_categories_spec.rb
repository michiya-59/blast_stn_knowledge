# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Expense::IncomeCategories", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/expense/income_categories/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/expense/income_categories/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/expense/income_categories/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/expense/income_categories/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/expense/income_categories/create"
      expect(response).to have_http_status(:success)
    end
  end
end
