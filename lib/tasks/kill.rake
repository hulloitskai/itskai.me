# rubocop:disable Rails/RakeEnvironment
# frozen_string_literal: true

desc "Kill app by sending SIGTERM to the server process"
task :kill do
  pidfile = Rails.root.join("tmp/pids/server.pid")
  if File.file?(pidfile)
    pid = File.read(pidfile)
    system("kill", pid)
  end
end
