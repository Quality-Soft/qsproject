source 'https://rubygems.org'

#gem para a avaliação com estrelas
gem 'jquery-star-rating-rails'
gem 'ratyrate'
#gem para autentição via google
gem "omniauth-google-oauth2"
gem 'omniauth'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

#Use gem devise for autentication
#gem 'devise'
gem 'devise', '~> 3.5', '>= 3.5.2'

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'will_paginate', '~> 3.0.6' 
gem 'will_paginate-bootstrap'
gem 'font-awesome-sass'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'sqlite3'
end

group :development, :test do
    gem 'factory_girl_rails'
    gem "rspec-rails", ">= 2.0.1"
    gem 'capybara'
    gem 'guard-rspec'
    gem 'spring-commands-rspec'
    gem 'vcr'
end


group :test do
   gem 'cucumber-rails', :require => false
   gem 'database_cleaner'
   gem 'launchy'
   gem 'webmock'
end


group :production do
  gem 'pg'
end