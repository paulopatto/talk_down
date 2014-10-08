threads 1, 6
workers 2
preload_app!

root_path = File.join(File.expand_path('../../..', __FILE__), 'current')
directory   root_path
bind        "unix://#{root_path}/tmp/talk_down.sock"
pidfile     "#{root_path}/tmp/talk_down.pid"
state_path  "#{root_path}/tmp/talk_down.state"
daemonize true
port 5000
stdout_redirect "#{root_path}/log/puma.log", "#{root_path}/log/puma.error.log", true

on_worker_boot do
  require "active_record"
  puts "Booting Puma Server on port 5000..."


  ActiveSupport.on_load(:active_record) do
    config = ActiveRecord::Base.configurations[Rails.env] ||
      Rails.application.config.database_configuration[Rails.env]
    ActiveRecord::Base.establish_connection(config)
  end

  #ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  #ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])
end

on_restart do
  puts "On restart..."
end
