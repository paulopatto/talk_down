threads 1, 6
workers 2

directory   "/opt/Applications/forum/current"
#bind        "tcp://0.0.0.0:5000"
bind        "unix:///home/deploy/tmp/talk_down.sock"
pidfile     "/home/deploy/tmp/talk_down.pid"
state_path  "/home/deploy/tmp/talk_down.state"
daemonize true
stdout_redirect "/opt/Applications/forum/shared/log/stdout", "/opt/Applications/forum/shared/log/stderr", true
port 5000

on_worker_boot do
  require "active_record"
  puts "Booting Puma Server on port 5000..."

  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])
end

on_restart do
  puts "On restart..."
end
