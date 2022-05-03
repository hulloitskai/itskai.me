# typed: ignore

module Trestle
  sig do
    params(
      name: Symbol,
      options: T.untyped,
      block: T.proc.void.bind(Trestle::Resource::Builder),
    ).void
  end
  def self.admin(name, **options, &block); end

  sig do
    params(
      name: Symbol,
      register_model: T.untyped,
      options: T.untyped,
      block: T.proc.void.bind(Trestle::Resource::Builder),
    ).void
  end
  def self.resource(name, register_model: T.unsafe(nil), **options, &block); end
end

class Trestle::Admin::Builder
  include Trestle::Search::Builder

  sig do
    params(
      args: T.untyped,
      block: T.proc.void.bind(Trestle::Navigation::Block::Evaluator),
    ).void
  end
  def menu(*args, &block); end

  sig do
    params(
      name_or_options: T.untyped,
      options: T.untyped,
      block: T.proc.void.bind(Trestle::Table::Builder),
    ).void
  end
  def table(
    name_or_options = T.unsafe(nil),
    options = T.unsafe(nil),
    &block
  ); end

  sig do
    params(
      options: T.untyped,
      block: T.proc.params(record: T.untyped).void.bind(Trestle::Form::Builder),
    ).void
  end
  def form(options = T.unsafe(nil), &block); end
end

module Trestle::Search::Builder
  sig do
    params(
      block:
        T
          .proc
          .params(
            query: T.nilable(String),
            params: ActionController::Parameters,
          )
          .returns(T.untyped),
    ).void
  end
  def search(&block); end
end

class Trestle::Form::Builder
  include Trestle::FormHelper
  include Trestle::GridHelper
  include Trestle::CardHelper
  include Trestle::TabHelper
  include Trestle::TableHelper
end

module Trestle::FormHelper
  sig { params(block: T.proc.void.bind(ActionView::Base)).void }
  def sidebar(&block); end
end

module Trestle::TableHelper
  sig do
    params(
      name: T.untyped,
      options: T.untyped,
      block: T.proc.void.bind(Trestle::Table::Builder),
    ).void
  end
  def table(name = nil, options = nil, &block); end
end
