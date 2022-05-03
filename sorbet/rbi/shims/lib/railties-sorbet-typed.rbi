# typed: strong

module Rails
  class << self
    sig { returns(Rails::Application) }
    def application; end

    sig { returns(ActiveSupport::BacktraceCleaner) }
    def backtrace_cleaner; end

    sig { returns(ActiveSupport::Cache::Store) }
    def cache; end

    sig { returns(ActiveSupport::EnvironmentInquirer) }
    def env; end

    sig { returns(Logger) }
    def logger; end

    sig { returns(Pathname) }
    def root; end

    sig { returns(String) }
    def version; end
  end
end

class Rails::Application < ::Rails::Engine
  sig { returns(Rails::Application::Configuration) }
  def config; end

  sig { returns (Rails::Application) }
  def application; end
end

class Rails::Railtie
  sig { params(block: T.proc.bind(Rails::Railtie).void).void }
  def configure(&block); end
end

class Rails::Engine < ::Rails::Railtie
  sig { returns(ActionDispatch::Routing::RouteSet) }
  def routes(&block); end

  sig { returns(ActionDispatch::Routing::RouteSet) }
  def self.routes(&block); end
end
