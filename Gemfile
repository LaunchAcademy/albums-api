source "https://rubygems.org"

ruby "2.3.0"

gem "rails", "4.2.4"
gem "pg"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "jquery-rails"
gem "active_model_serializers", "~> 0.10.0"

group :development, :test do
  gem "dotenv-rails"
  gem "pry-rails"
end

group :production do
  gem "puma"
  gem "rails_12factor"
end

group :test do
  gem "capybara"
  gem "factory_girl_rails", "~> 4.0"
  gem "launchy", require: false
  gem "rspec-rails", "~> 3.0"
  gem "shoulda"
  gem "valid_attribute"
end

