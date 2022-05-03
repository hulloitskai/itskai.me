# rubocop:disable Rails/RakeEnvironment
# frozen_string_literal: true

Rake::Task["javascript:build"].clear

namespace :javascript do
  desc "Build your JS bundle"
  task :build do
    system("yarn install && yarn js:build")
  end

  desc "Continuously build your JS bundle as files change"
  task :watch do
    system("yarn install && yarn js:watch")
  end
end
