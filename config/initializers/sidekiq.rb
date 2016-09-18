$sidekiq = YAML.load(File.read(File.join('config','sidekiq.yml')))[Rails.env.to_s]

#HACK
if ENV['RAILS_ENV'] == 'production'
  $sidekiq[:service] = ENV['REDISTOGO_URL']
end

Sidekiq.configure_server do |config|
  config.redis = { url: $sidekiq[:service] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: $sidekiq[:service] }
end
