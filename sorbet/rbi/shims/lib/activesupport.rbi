# typed: strong

module ActiveSupport::Dependencies
  sig { returns(ActiveSupport::Dependencies::Interlock) }
  def self.interlock; end
end

class Object
  sig { returns(T::Boolean) }
  def present?; end
end
