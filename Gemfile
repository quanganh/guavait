source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'mysql2'
gem 'sass-rails'
gem 'haml-rails'
gem 'simple_form'
gem 'turbolinks'
gem 'jbuilder'
gem 'meta-tags', :require => 'meta_tags'
gem 'unicorn'
gem 'jquery-rails'

group :assets do
  gem 'coffee-rails'
  gem 'bootstrap-sass'
  gem 'uglifier'
  gem 'execjs'
  gem 'therubyracer'
end

group :development do
  gem 'debugger'
  gem 'html2haml'
  gem 'quiet_assets'
end

group :test, :development do
  gem 'database_cleaner'
  gem 'minitest-rails', '0.5.2' # bloody mofos
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'ffaker'
  gem 'minitest-colorize', github: 'bbozo/minitest-colorize'
  gem 'minitest-mustwonted'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end