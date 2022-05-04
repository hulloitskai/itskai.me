source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Parse and manipulate URIs
gem "addressable", "~> 2.8"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.2", ">= 7.0.2.3"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.2"
gem "pg_search", "~> 2.3"

# Use Good Job as the backend for Active Job
gem "good_job", "~> 2.14"

# Perform HTTP requests with HTTParty
gem "httparty", "~> 0.20.0"

# Validate email addresses, phone numbers, and URLs
gem "email_validator", "~> 2.2"
gem "phonelib", "~> 0.6.55"
gem "validate_url", "~> 1.0"

# Validate active storage blobs
gem "active_storage_validations", "~> 0.9.6"

# Use typed stores to store attributes in a JSON column
gem "activerecord-typedstore", "~> 1.4"

# Use additional operators and utilities for ActiveRecord with Postgres
gem "active_record_extended", "~> 2.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Hotwire"s SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire"s modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Version models with Paper Trail
gem "paper_trail", "~> 12.2"
gem "paper_trail-globalid", "~> 0.2.0"

# Handle soft deletions
gem "discard", "~> 1.2"

# Decorate models with presentation logic
gem "draper", "~> 4.0"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Cache association COUNTs in a column
gem "counter_culture", "~> 3.2"

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Typecheck code at run-time
gem "sorbet-runtime", "0.5.9878"

# Load environment variables from .env
gem "dotenv", "~> 2.7", require: false

# Use Heroicons
gem "rails_heroicon", "~> 1.0"

# Launch an interactive editor session within Pry / IRB
gem "interactive_editor"

# Use view components to encapsulate view templates
gem "view_component", "~> 2.53"

# Asynchronously render partials with Turbo Streams
gem "render_async", "~> 2.1"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]

  # Warn about N+1 queries
  gem "bullet"

  # Quickly log key information
  gem "wrapped_print"

  # Generate fake data
  gem "faker", "~> 2.20"
end

group :development do
  # Typecheck code
  gem "sorbet", "0.5.9878", require: false
  gem "spoom", require: false
  gem "tapioca", "~> 0.7.1", require: false

  # Debug code and inspect values at runtime
  gem "pry"
  gem "pry-doc"
  gem "pry-rails"
  gem "pry-remote"
  gem "pry-rescue"
  gem "pry-stack_explorer"

  # Use Rubocop to lint code
  gem "rubocop", "1.27", require: false
  gem "rubocop-shopify", "~> 2.5", require: false
  gem "rubocop-sorbet", "~> 0.6.2", require: false
  gem "rubocop-rails", "~> 2.14", require: false

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", require: false

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler"
  gem "memory_profiler"
  gem "stackprof"

  # Display a better error page during development
  gem "better_errors"
  gem "binding_of_caller"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"

  # Show Postgres performance insights.
  gem "rails-pg-extras"

  # Annotate models and routes
  gem "annotate", require: false

  # Show a native development UI for ViewComponents
  gem "lookbook"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
