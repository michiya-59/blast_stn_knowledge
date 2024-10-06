# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Expense::Homes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/expense/home/index"
      expect(response).to have_http_status(:success)
    end
  end
end
