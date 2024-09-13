# frozen_string_literal: true

module ExpenseModule
  class HomeController < ApplicationController
    def index
      @current_time = Time.current
    end

    def search; end

    def export_pdf; end
  end
end
