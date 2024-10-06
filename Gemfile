# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "3.2.1"

gem "rails", "~> 7.0.7", ">= 7.0.7.2"

gem "activestorage-cloudinary-service", "~> 0.2.3"
gem "active_storage_validations" # 画像ファイルのバリデーション用
gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "cloudinary", "~> 1.27"
gem "dartsass-rails", "~> 0.5.0"
gem "image_processing", "~> 1.2"
gem "importmap-rails"
gem "jbuilder"
gem "jquery-rails"
gem "kaminari"
gem "kredis"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails-i18n"
gem "redis", "~> 4.0"
gem "sassc-rails"
gem "sprockets-rails"
gem "stimulus-rails"
# gem "turbo-rails"
gem "aws-sdk-s3"
gem "chartkick"
gem "dotenv-rails"
gem "gon"
gem "groupdate"
gem "prawn"
gem "prawn-table"
# PDf出力のGem
gem "ferrum"

gem "tzinfo-data", platforms: %i(mingw mswin x64_mingw jruby)

group :development, :test do
  gem "brakeman", require: false
  gem "bullet"
  gem "byebug", platforms: %i(mri mingw x64_mingw)
  gem "debug", platforms: %i(mri mingw x64_mingw)
  gem "factory_bot_rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "spring-commands-rspec"
end

group :development do
  # gem "rack-mini-profiler"
  gem "spring"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
