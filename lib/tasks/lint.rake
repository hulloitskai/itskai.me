# rubocop:disable Rails/RakeEnvironment
# frozen_string_literal: true

namespace :lint do
  desc "Check code offenses"
  task :check do
    system("bundle exec rubocop")
  end

  desc "Fix code offenses"
  task :fix do
    system("bundle exec rubocop --auto-correct-all")
  end
end

desc "Check code offenses"
task :lint do
  Rake::Task["lint:check"].execute
end
