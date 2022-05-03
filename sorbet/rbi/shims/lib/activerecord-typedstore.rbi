# typed: ignore

module ActiveRecord::TypedStore
  module Extension
    sig do
      params(
        store_attribute: Symbol,
        options: T::Hash[Symbol, T.untyped],
        block: T.proc.params(store: DSL).void,
      ).void
    end
    def typed_store(store_attribute, options = T.unsafe(nil), &block); end
  end
end
