# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `binding_of_caller` gem.
# Please instead update this file by running `bin/tapioca gem binding_of_caller`.

module BindingOfCaller; end

module BindingOfCaller::BindingExtensions
  # Return bindings for all caller frames.
  #
  # @return [Array<Binding>]
  def callers; end

  # Number of parent frames available at the point of call.
  #
  # @return [Fixnum]
  def frame_count; end

  # The description of the frame.
  #
  # @return [String]
  def frame_description; end

  # The type of the frame.
  #
  # @return [Symbol]
  def frame_type; end

  # Retrieve the binding of the nth caller of the current frame.
  #
  # @raise [RuntimeError]
  # @return [Binding]
  def of_caller(n); end
end

BindingOfCaller::VERSION = T.let(T.unsafe(nil), String)
