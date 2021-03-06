# typed: strong

class Array
  sig { params(elements: T.untyped).returns(T::Array[T.untyped]) }
  def excluding(*elements); end

  sig do
    params(blk: T.nilable(T.proc.params(arg0: Elem).returns(T::Boolean)))
      .returns(T.any(T::Array[Elem], T::Enumerable[Elem]))
  end
  def extract!(&blk); end

  sig { params(elements: T.untyped).returns(T::Array[T.untyped]) }
  def including(*elements); end
end

module Enumerable
  # https://github.com/rails/rails/blob/v6.0.0/activesupport/lib/active_support/core_ext/enumerable.rb#L70..L82
  # the case where a block isn't given isn't handled - that seems like an unlikely case
  sig do
    type_parameters(:key)
      .params(
        default: T.untyped,
        block:
          T.proc.params(o: Enumerable::Elem).returns(T.type_parameter(:key)),
      )
      .returns(T::Hash[Enumerable::Elem, T.type_parameter(:key)])
  end
  def index_with(default = T.unsafe(nil), &block); end
end
