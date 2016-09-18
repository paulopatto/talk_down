source 'http://rubygems.org'

gem 'rails', '4.2.7'

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

group :development, :test do
  gem 'spring'
end

group :development do
  gem 'thin'
  gem 'annotate'
end

group :development, :test do
  gem 'pry-meta'
  gem 'pry-rails'
  gem 'sqlite3'
end

group :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

group :production, :staging do
  gem 'puma'
  gem 'pg'
end
