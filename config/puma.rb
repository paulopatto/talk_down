threads 1, 6
workers 2

directory   "/opt/Applications/forum/current"
bind        "unix:///home/deploy/tmp/talk_down.sock"
pidfile     "/home/deploy/tmp/talk_down.pid"
state_path  "/home/deploy/tmp/talk_down.state"
daemonize true
port 5000
stdout_redirect "/opt/Applications/forum/shared/log/puma.log", "/opt/Applications/forum/shared/log/puma.error.log", true

on_worker_boot do
  require "active_record"
  puts "Booting Puma Server on port 5000..."

  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])
end

on_restart do
  puts "On restart..."
end
