# rubocop:disable Rails/RakeEnvironment
# frozen_string_literal: true

namespace :format do
  desc "Check code formatting"
  task :check do
    system("yarn install && yarn prettier --check .")
  end

  desc "Fix code formatting"
  task :fix do
    system("yarn install && yarn prettier --write .")
  end
end

desc "Fix code formatting"
task :format do
  Rake::Task["format:fix"].execute
end
