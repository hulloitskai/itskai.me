# rubocop:disable Rails/RakeEnvironment
# frozen_string_literal: true

Rake::Task["css:build"].clear

namespace :css do
  desc "Build your CSS bundle"
  task :build do
    system("yarn install && yarn css:build")
  end

  desc "Continuously build your CSS bundle as files change"
  task :watch do
    system("yarn install && yarn css:watch")
  end
end
