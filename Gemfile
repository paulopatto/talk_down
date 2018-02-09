source 'https://rubygems.org'

gem 'rails', '~> 4.2.9'

gem 'simple_form'
gem 'text'
gem 'kaminari'
gem 'react-rails'
gem 'sidekiq'
gem 'state_machines-activerecord'

group :assets do
  gem 'uglifier'
  gem 'therubyracer'
end


group :development do
  gem 'thin'
  gem 'annotate'
end

group :development, :test do
  gem 'pry-meta'
  gem 'pry-rails'
  gem 'sqlite3'
  gem 'spring'
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'poltergeist'
  gem 'rspec-rails', '~> 3.5'
  gem 'selenium-webdriver' #, '3.2.2'
  gem 'shoulda-matchers'
  gem 'simple_bdd'
end

group :production, :staging do
  gem 'puma'
  gem 'pg'
end
