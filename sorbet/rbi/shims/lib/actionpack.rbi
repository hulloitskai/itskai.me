# typed: strict

module AbstractController::Collector
  sig do
    params(
      args: T.untyped,
      _arg1: T.untyped,
      block: T.proc.bind(AbstractController::Rendering).void,
    ).void
  end
  def html(*args, **_arg1, &block); end

  sig do
    params(
      args: T.untyped,
      _arg1: T.untyped,
      block: T.proc.bind(AbstractController::Rendering).void,
    ).void
  end
  def text(*args, **_arg1, &block); end
end

module AbstractController::Logger::ClassMethods
end

module ActionDispatch::Routing::UrlFor::ClassMethods
end

module ActionController::UrlFor::ClassMethods
end

module ActionView::Helpers
  module TextHelper::ClassMethods
  end
  module FormTagHelper::ClassMethods
  end
  module FormHelper::ClassMethods
  end
  module TranslationHelper::ClassMethods
  end
end
