source 'https://rubygems.org'

ruby '2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use postgresql as the database for Active Record
gem 'pg'
gem 'uglifier'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass'
# gem 'strong_parameters'   # <<  Not needed, already in Rails 4

gem 'bcrypt-ruby', '~> 3.0.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
group :development, :test do
  gem 'debugger'
  gem 'rspec-rails'
  gem 'capybara', '1.1.2'
  #gem 'minitest-rails'

  
  # Use Uglifier as compressor for JavaScript assets
  
end

group :development do
  gem 'annotate'
  gem "autotest-rails", "~> 4.1.2"

end

group :test do
  gem 'factory_girl_rails'
  gem "shoulda", "~> 3.5.0"
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end