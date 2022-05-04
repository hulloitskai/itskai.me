# rubocop:disable Rails/RakeEnvironment
# frozen_string_literal: true

desc "Create a release"
task :release do
  system("yarn install && yarn release-it")
end
