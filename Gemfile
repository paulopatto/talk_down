source 'http://rubygems.org'

ruby '2.1.3'

gem 'rails', '4.2.7'

gem 'simple_form'
gem 'text'
gem 'kaminari'
gem 'react-rails'

group :assets do
  gem 'uglifier'
  gem 'therubyracer'
end

group :development, :test, :travis do
  gem 'sqlite3'
  gem 'spring'
end

group :development do
  gem 'thin'
  gem 'annotate'
end

group :development, :test do
  gem 'pry-meta'
  gem 'pry-rails'
end

group :test, :travis do
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
end

group :production, :staging do
  gem 'puma'
  gem 'pg'
end
