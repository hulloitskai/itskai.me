# typed: strict
# frozen_string_literal: true

class String
  extend T::Sig
  extend T::Helpers

  sig { params(default: T::Boolean).returns(T::Boolean) }
  def truthy?(default = false)
    case downcase
    when "t", "true", "1"
      true
    when "f", "false", "0"
      false
    else
      default
    end
  end
end

class Integer
  extend T::Sig
  extend T::Helpers

  sig { params(default: T::Boolean).returns(T::Boolean) }
  def truthy?(default = false)
    case self
    when 1
      true
    when 0
      false
    else
      default
    end
  end
end

class NilClass
  extend T::Sig
  extend T::Helpers

  sig { params(default: T::Boolean).returns(T::Boolean) }
  def truthy?(default = false)
    default
  end
end

module Kernel
  extend T::Sig
  extend T::Helpers

  # Execute the provided block; used to as an alternative to (begin...end) which
  # does not pollute the local scope with variables declared in the block.
  sig do
    type_parameters(:T)
      .params(block: T.proc.returns(T.type_parameter(:T)))
      .returns(T.type_parameter(:T))
  end
  def scoped(&block)
    yield
  end
end
