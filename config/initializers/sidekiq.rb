$sidekiq = YAML.load(File.read(File.join('config','sidekiq.yml')))[Rails.env.to_s]

Sidekiq.configure_server do |config|
  config.redis = { url: $sidekiq[:service] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: $sidekiq[:service] }
end
