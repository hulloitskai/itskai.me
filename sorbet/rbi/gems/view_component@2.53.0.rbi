# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `view_component` gem.
# Please instead update this file by running `bin/tapioca gem view_component`.

module ViewComponent
  extend ::ActiveSupport::Autoload
end

class ViewComponent::Base < ::ActionView::Base
  include ::ActiveSupport::Configurable
  include ::ViewComponent::ContentAreas
  include ::ViewComponent::Previewable
  include ::ViewComponent::SlotableV2
  include ::ViewComponent::WithContentHelper
  extend ::ActiveSupport::Configurable::ClassMethods
  extend ::ViewComponent::ContentAreas::ClassMethods
  extend ::ViewComponent::SlotableV2::ClassMethods

  # @private
  # @return [Base] a new instance of Base
  def initialize(*_arg0); end

  # Returns the value of attribute __vc_original_view_context.
  def __vc_original_view_context; end

  # Sets the attribute __vc_original_view_context
  #
  # @param value the value to set the attribute __vc_original_view_context to.
  def __vc_original_view_context=(_arg0); end

  # EXPERIMENTAL: Optional content to be returned after the rendered template.
  #
  # @return [String]
  def _output_postamble; end

  # Called before rendering the component. Override to perform operations that
  # depend on having access to the view context, such as helpers.
  #
  # @return [void]
  def before_render; end

  # Called after rendering the component.
  #
  # @deprecated Use `#before_render` instead. Will be removed in v3.0.0.
  # @return [void]
  def before_render_check; end

  def component_parent_class; end
  def config(*_arg0, **_arg1, &_arg2); end
  def content_areas; end
  def content_areas=(_arg0); end
  def content_areas?; end

  # The current controller. Use sparingly as doing so introduces coupling
  # that inhibits encapsulation & reuse, often making testing difficult.
  #
  # @return [ActionController::Base]
  def controller; end

  def default_preview_layout; end
  def form_authenticity_token(*_arg0, **_arg1, &_arg2); end

  # For caching, such as #cache_if
  #
  # @private
  def format; end

  def generate; end

  # A proxy through which to access helpers. Use sparingly as doing so introduces
  # coupling that inhibits encapsulation & reuse, often making testing difficult.
  #
  # @return [ActionView::Base]
  def helpers; end

  def perform_render; end
  def preview_controller; end
  def preview_path; end
  def preview_paths; end
  def preview_route; end
  def protect_against_forgery?(*_arg0, **_arg1, &_arg2); end
  def registered_slots; end
  def registered_slots=(_arg0); end
  def registered_slots?; end

  # Re-use original view_context if we're not rendering a component.
  #
  # This prevents an exception when rendering a partial inside of a component that has also been rendered outside
  # of the component. This is due to the partials compiled template method existing in the parent `view_context`,
  #  and not the component's `view_context`.
  #
  # @private
  def render(options = T.unsafe(nil), args = T.unsafe(nil), &block); end

  # Override to determine whether the ViewComponent should render.
  #
  # @return [Boolean]
  def render?; end

  # Entrypoint for rendering components.
  #
  # - `view_context`: ActionView context from calling view
  # - `block`: optional block to be captured within the view context
  #
  # Returns HTML that has been escaped by the respective template handler.
  #
  # @return [String]
  def render_in(view_context, &block); end

  def render_monkey_patch_enabled; end

  # :nocov:
  def render_template_for(variant = T.unsafe(nil)); end

  # The current request. Use sparingly as doing so introduces coupling that
  # inhibits encapsulation & reuse, often making testing difficult.
  #
  # @return [ActionDispatch::Request]
  def request; end

  def show_previews; end
  def show_previews_source; end
  def test_controller; end
  def test_controller=(val); end

  # For caching, such as #cache_if
  #
  # @private
  def view_cache_dependencies; end

  def view_component_path; end

  # Exposes .virtual_path as an instance method
  #
  # @private
  def virtual_path; end

  # Use the provided variant instead of the one determined by the current request.
  #
  # @deprecated Will be removed in v3.0.0.
  # @param variant [Symbol] The variant to be used by the component.
  # @return [self]
  def with_variant(*args, **_arg1, &block); end

  private

  def content; end

  # @return [Boolean]
  def content_evaluated?; end

  # Returns the value of attribute view_context.
  def view_context; end

  class << self
    # EXPERIMENTAL: This API is experimental and may be removed at any time.
    # Hook for allowing components to do work as part of the compilation process.
    #
    # For example, one might compile component-specific assets at this point.
    #
    # @private TODO: add documentation
    def _after_compile; end

    def _deprecated_generate_mattr_accessor(name); end

    # EXPERIMENTAL: This API is experimental and may be removed at any time.
    # Find sidecar files for the given extensions.
    #
    # The provided array of extensions is expected to contain
    # strings starting without the "dot", example: `["erb", "haml"]`.
    #
    # For example, one might collect sidecar CSS files that need to be compiled.
    #
    # @private TODO: add documentation
    def _sidecar_files(extensions); end

    # @private
    def collection_counter_parameter; end

    # @private
    def collection_iteration_parameter; end

    # @private
    def collection_parameter; end

    # Compile templates to instance methods, assuming they haven't been compiled already.
    #
    # Do as much work as possible in this step, as doing so reduces the amount
    # of work done each time a component is rendered.
    #
    # @private
    def compile(raise_errors: T.unsafe(nil), force: T.unsafe(nil)); end

    # @private
    # @return [Boolean]
    def compiled?; end

    # @private
    def compiler; end

    def component_parent_class; end
    def component_parent_class=(val); end
    def content_areas; end
    def content_areas=(value); end
    def content_areas?; end

    # @private
    # @return [Boolean]
    def counter_argument_present?; end

    def default_preview_layout; end
    def default_preview_layout=(val); end

    # @private
    def format; end

    def generate; end
    def generate=(val); end
    def generate_distinct_locale_files; end
    def generate_distinct_locale_files=(value); end
    def generate_locale; end
    def generate_locale=(value); end
    def generate_sidecar; end
    def generate_sidecar=(value); end
    def generate_stimulus_controller; end
    def generate_stimulus_controller=(value); end

    # @private
    def identifier; end

    # @private
    # @private
    def inherited(child); end

    # @private
    # @return [Boolean]
    def iteration_argument_present?; end

    def preview_controller; end
    def preview_controller=(val); end
    def preview_path; end
    def preview_path=(val); end
    def preview_paths; end
    def preview_paths=(val); end
    def preview_route; end
    def preview_route=(val); end
    def registered_slots; end
    def registered_slots=(value); end
    def registered_slots?; end
    def render_monkey_patch_enabled; end
    def render_monkey_patch_enabled=(val); end

    # Provide identifier for ActionView template annotations
    #
    # @private
    def short_identifier; end

    def show_previews; end
    def show_previews=(val); end
    def show_previews_source; end
    def show_previews_source=(val); end

    # @private
    def source_location; end

    # @private
    def source_location=(_arg0); end

    def test_controller; end
    def test_controller=(val); end

    # we'll eventually want to update this to support other types
    #
    # @private
    def type; end

    # Ensure the component initializer accepts the
    # collection parameter. By default, we don't
    # validate that the default parameter name
    # is accepted, as support for collection
    # rendering is optional.
    #
    # @private TODO: add documentation
    # @raise [ArgumentError]
    def validate_collection_parameter!(validate_default: T.unsafe(nil)); end

    # Ensure the component initializer doesn't define
    # invalid parameters that could override the framework's
    # methods.
    #
    # @private TODO: add documentation
    # @raise [ViewComponent::ComponentError]
    def validate_initialization_parameters!; end

    def view_component_path; end
    def view_component_path=(val); end

    # @private
    def virtual_path; end

    # @private
    def virtual_path=(_arg0); end

    # Render a component for each element in a collection ([documentation](/guide/collections)):
    #
    #     render(ProductsComponent.with_collection(@products, foo: :bar))
    #
    # @param collection [Enumerable] A list of items to pass the ViewComponent one at a time.
    # @param args [Arguments] Arguments to pass to the ViewComponent every time.
    def with_collection(collection, **args); end

    # Set the parameter name used when rendering elements of a collection ([documentation](/guide/collections)):
    #
    #     with_collection_parameter :item
    #
    # @param parameter [Symbol] The parameter name used when rendering elements of a collection.
    def with_collection_parameter(parameter); end

    private

    def initialize_parameter_names; end
    def initialize_parameters; end
    def provided_collection_parameter; end
  end
end

ViewComponent::Base::RESERVED_PARAMETER = T.let(T.unsafe(nil), Symbol)
class ViewComponent::Base::ViewContextCalledBeforeRenderError < ::StandardError; end

class ViewComponent::Collection
  include ::Enumerable

  # @return [Collection] a new instance of Collection
  def initialize(component, object, **options); end

  # Returns the value of attribute component.
  def component; end

  def components; end
  def each(&block); end
  def format(*_arg0, **_arg1, &_arg2); end
  def render_in(view_context, &block); end
  def size(*_arg0, **_arg1, &_arg2); end

  private

  def collection_variable(object); end
  def component_options(item, iterator); end
end

# Keeps track of which templates have already been compiled
# This isn't part of the public API
module ViewComponent::CompileCache
  private

  def compiled?(klass); end
  def invalidate!; end
  def invalidate_class!(klass); end
  def register(klass); end

  class << self
    def cache; end
    def cache=(val); end

    # @return [Boolean]
    def compiled?(klass); end

    def invalidate!; end
    def invalidate_class!(klass); end
    def register(klass); end
  end
end

class ViewComponent::Compiler
  # @return [Compiler] a new instance of Compiler
  def initialize(component_class); end

  # Lock required to be obtained before compiling the component
  def __vc_compiler_lock; end

  def compile(raise_errors: T.unsafe(nil), force: T.unsafe(nil)); end

  # @return [Boolean]
  def compiled?; end

  # @return [Boolean]
  def development?; end

  def mode; end
  def mode=(_arg0); end
  def mode?; end
  def reset_render_template_for; end
  def with_lock(&block); end

  private

  def call_method_name(variant); end
  def compiled_template(file_path); end

  # Returns the value of attribute component_class.
  def component_class; end

  def define_render_template_for; end
  def inline_calls; end
  def inline_calls_defined_on_self; end
  def template_errors; end
  def templates; end
  def variants; end
  def variants_from_inline_calls(calls); end

  class << self
    def mode; end
    def mode=(value); end
    def mode?; end
  end
end

# Compiler mode. Can be either:
# * development (a blocking mode which ensures thread safety when redefining the `call` method for components,
#                default in Rails development and test mode)
# * production (a non-blocking mode, default in Rails production mode)
ViewComponent::Compiler::DEVELOPMENT_MODE = T.let(T.unsafe(nil), Symbol)

ViewComponent::Compiler::PRODUCTION_MODE = T.let(T.unsafe(nil), Symbol)
class ViewComponent::ComponentError < ::StandardError; end

module ViewComponent::ContentAreas
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ViewComponent::ContentAreas::ClassMethods

  # Assign the provided content to the content area accessor
  #
  # @private
  def with(area, content = T.unsafe(nil), &block); end
end

module ViewComponent::ContentAreas::ClassMethods
  def with_content_areas(*areas); end
end

ViewComponent::DEPRECATION_HORIZON = T.let(T.unsafe(nil), Integer)
ViewComponent::Deprecation = T.let(T.unsafe(nil), ActiveSupport::Deprecation)

class ViewComponent::Engine < ::Rails::Engine
  class << self
    def __callbacks; end
  end
end

module ViewComponent::GlobalOutputBuffer
  def output_buffer=(other_buffer); end
  def perform_render; end
  def render_in(view_context, &block); end
  def with_output_buffer(buf = T.unsafe(nil)); end
end

module ViewComponent::GlobalOutputBuffer::ActionViewMods
  def output_buffer=(other_buffer); end
  def with_output_buffer(buf = T.unsafe(nil)); end
end

module ViewComponent::Instrumentation
  def render_in(view_context, &block); end

  class << self
    # @private
    def included(mod); end
  end
end

class ViewComponent::OutputBufferStack
  # @return [OutputBufferStack] a new instance of OutputBufferStack
  def initialize(initial_buffer = T.unsafe(nil)); end

  def append=(arg); end

  # Returns the value of attribute buffer_stack.
  def buffer_stack; end

  def current; end
  def html_safe?(*_arg0, **_arg1, &_arg2); end
  def length; end
  def method_missing(method, *args, **_arg2, &block); end
  def pop; end
  def presence(*_arg0, **_arg1, &_arg2); end
  def present?(*_arg0, **_arg1, &_arg2); end
  def push(buffer = T.unsafe(nil)); end
  def replace(buffer); end
  def safe_append=(arg); end
  def safe_concat(arg); end
  def to_s; end

  private

  def respond_to_missing?(name, include_private = T.unsafe(nil)); end

  class << self
    def make_frame(*args); end
  end
end

module ViewComponent::PolymorphicSlots
  include ::ViewComponent::PolymorphicSlots::InstanceMethods

  mixes_in_class_methods ::ViewComponent::PolymorphicSlots::ClassMethods

  class << self
    # In older rails versions, using a concern isn't a good idea here because they appear to not work with
    # Module#prepend and class methods.
    def included(base); end
  end
end

module ViewComponent::PolymorphicSlots::ClassMethods
  def register_polymorphic_slot(slot_name, types, collection:); end
  def renders_many(slot_name, callable = T.unsafe(nil)); end
  def renders_one(slot_name, callable = T.unsafe(nil)); end
end

module ViewComponent::PolymorphicSlots::InstanceMethods
  def set_polymorphic_slot(slot_name, poly_type = T.unsafe(nil), *args, **_arg3, &block); end
end

class ViewComponent::Preview
  include ::ActionView::Helpers::AssetUrlHelper
  include ::ActionView::Helpers::CaptureHelper
  include ::ActionView::Helpers::OutputSafetyHelper
  include ::ActionView::Helpers::TagHelper
  include ::ActionView::Helpers::AssetTagHelper
  extend ::ActiveSupport::DescendantsTracker

  def render(component, **args, &block); end
  def render_component(component, **args, &block); end
  def render_with_template(template: T.unsafe(nil), locals: T.unsafe(nil)); end

  class << self
    # Returns all component preview classes.
    def all; end

    # Returns all of the available examples for the component preview.
    def examples; end

    # Returns +true+ if the preview exists.
    #
    # @return [Boolean]
    def exists?(preview); end

    # Find a component preview by its underscored class name.
    def find(preview); end

    # Setter for layout name.
    def layout(layout_name); end

    # Returns the relative path (from preview_path) to the preview example template if the template exists
    def preview_example_template_path(example); end

    # Returns the underscored name of the component preview without the suffix.
    def preview_name; end

    # Returns the method body for the example from the preview file.
    def preview_source(example); end

    # Returns the arguments for rendering of the component in its layout
    def render_args(example, params: T.unsafe(nil)); end

    private

    def load_previews; end
    def preview_paths; end
  end
end

class ViewComponent::PreviewTemplateError < ::StandardError; end

module ViewComponent::Previewable
  extend ::ActiveSupport::Concern
end

class ViewComponent::Slot
  # Returns the value of attribute content.
  def content; end

  # Sets the attribute content
  #
  # @param value the value to set the attribute content to.
  def content=(_arg0); end
end

class ViewComponent::SlotV2
  include ::ViewComponent::WithContentHelper

  # @return [SlotV2] a new instance of SlotV2
  def initialize(parent); end

  # Sets the attribute __vc_component_instance
  #
  # @param value the value to set the attribute __vc_component_instance to.
  def __vc_component_instance=(_arg0); end

  # Sets the attribute __vc_content
  #
  # @param value the value to set the attribute __vc_content to.
  def __vc_content=(_arg0); end

  # Sets the attribute __vc_content_block
  #
  # @param value the value to set the attribute __vc_content_block to.
  def __vc_content_block=(_arg0); end

  # @return [Boolean]
  def html_safe?; end

  # Allow access to public component methods via the wrapper
  #
  # for example
  #
  # calling `header.name` (where `header` is a slot) will call `name`
  # on the `HeaderComponent` instance.
  #
  # Where the component may look like:
  #
  # class MyComponent < ViewComponent::Base
  #   has_one :header, HeaderComponent
  #
  #   class HeaderComponent < ViewComponent::Base
  #     def name
  #       @name
  #     end
  #   end
  # end
  def method_missing(symbol, *args, **_arg2, &block); end

  # Used to render the slot content in the template
  #
  # There's currently 3 different values that may be set, that we can render.
  #
  # If the slot renderable is a component, the string class name of a
  # component, or a function that returns a component, we render that
  # component instance, returning the string.
  #
  # If the slot renderable is a function and returns a string, it's
  # set as `@__vc_content` and is returned directly.
  #
  # If there is no slot renderable, we evaluate the block passed to
  # the slot and return it.
  def to_s; end

  private

  # @return [Boolean]
  def respond_to_missing?(symbol, include_all = T.unsafe(nil)); end
end

module ViewComponent::Slotable
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ViewComponent::Slotable::ClassMethods

  # Build a Slot instance on a component,
  # exposing it for use inside the
  # component template.
  #
  # slot: Name of Slot, in symbol form
  # **args: Arguments to be passed to Slot initializer
  #
  # For example:
  # <%= render(SlotsComponent.new) do |component| %>
  #   <% component.slot(:footer, class_names: "footer-class") do %>
  #     <p>This is my footer!</p>
  #   <% end %>
  # <% end %>
  def slot(slot_name, **args, &block); end

  module GeneratedClassMethods
    def slots; end
    def slots=(value); end
    def slots?; end
  end

  module GeneratedInstanceMethods
    def slots; end
    def slots=(value); end
    def slots?; end
  end
end

module ViewComponent::Slotable::ClassMethods
  def inherited(child); end
  def with_slot(*slot_names, collection: T.unsafe(nil), class_name: T.unsafe(nil)); end
end

module ViewComponent::SlotableV2
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ViewComponent::SlotableV2::ClassMethods

  def get_slot(slot_name); end
  def set_slot(slot_name, slot_definition = T.unsafe(nil), *args, **_arg3, &block); end

  module GeneratedClassMethods
    def registered_slots; end
    def registered_slots=(value); end
    def registered_slots?; end
  end

  module GeneratedInstanceMethods
    def registered_slots; end
    def registered_slots=(value); end
    def registered_slots?; end
  end
end

module ViewComponent::SlotableV2::ClassMethods
  def inherited(child); end
  def renders_many(slot_name, callable = T.unsafe(nil)); end
  def renders_one(slot_name, callable = T.unsafe(nil)); end
  def slot_type(slot_name); end

  private

  def define_slot(slot_name, collection:, callable:); end
  def raise_if_slot_ends_with_question_mark(slot_name); end
  def raise_if_slot_registered(slot_name); end
  def register_slot(slot_name, **kwargs); end
  def validate_plural_slot_name(slot_name); end
  def validate_singular_slot_name(slot_name); end
end

ViewComponent::SlotableV2::RESERVED_NAMES = T.let(T.unsafe(nil), Hash)

class ViewComponent::TemplateError < ::StandardError
  # @return [TemplateError] a new instance of TemplateError
  def initialize(errors); end
end

class ViewComponent::TestCase < ::ActiveSupport::TestCase
  include ::Capybara::Minitest::Assertions
  include ::ViewComponent::TestHelpers
end

module ViewComponent::TestHelpers
  include ::Capybara::Minitest::Assertions

  # @private
  def build_controller(klass); end

  # @private
  def controller; end

  def page; end
  def refute_component_rendered; end

  # Render a component inline. Internally sets `page` to be a `Capybara::Node::Simple`,
  # allowing for Capybara assertions to be used:
  #
  # ```ruby
  # render_inline(MyComponent.new)
  # assert_text("Hello, World!")
  # ```
  #
  # @param component [ViewComponent::Base, ViewComponent::Collection] The instance of the component to be rendered.
  # @return [Nokogiri::HTML]
  def render_inline(component, **args, &block); end

  # @private
  def rendered_component; end

  # @private
  def request; end

  # Set the controller to be used while executing the given block,
  # allowing access to controller-specific methods:
  #
  # ```ruby
  # with_controller_class(UsersController) do
  #   render_inline(MyComponent.new)
  # end
  # ```
  #
  # @param klass [ActionController::Base] The controller to be used.
  def with_controller_class(klass); end

  # Set the URL of the current request (such as when using request-dependent path helpers):
  #
  # ```ruby
  # with_request_url("/users/42") do
  #   render_inline(MyComponent.new)
  # end
  # ```
  #
  # @param path [String] The path to set for the current request.
  def with_request_url(path); end

  # Set the Action Pack request variant for the given block:
  #
  # ```ruby
  # with_variant(:phone) do
  #   render_inline(MyComponent.new)
  # end
  # ```
  #
  # @param variant [Symbol] The variant to be set for the provided block.
  def with_variant(variant); end
end

module ViewComponent::Translatable
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ViewComponent::Translatable::ClassMethods

  def html_safe_translation(translation); end

  # Exposes .i18n_scope as an instance method
  def i18n_scope; end

  def t(key = T.unsafe(nil), **options); end
  def translate(key = T.unsafe(nil), **options); end

  private

  def html_escape_translation_options!(options); end

  # @return [Boolean]
  def i18n_option?(name); end

  module GeneratedClassMethods
    def i18n_backend; end
    def i18n_backend=(value); end
  end

  module GeneratedInstanceMethods
    def i18n_backend; end
  end
end

module ViewComponent::Translatable::ClassMethods
  def _after_compile; end
  def i18n_scope; end
end

ViewComponent::Translatable::HTML_SAFE_TRANSLATION_KEY = T.let(T.unsafe(nil), Regexp)

class ViewComponent::Translatable::I18nBackend < ::I18n::Backend::Simple
  # @return [I18nBackend] a new instance of I18nBackend
  def initialize(i18n_scope:, load_paths:); end

  # Ensure the Simple backend won't load paths from ::I18n.load_path
  def load_translations; end

  def scope_data(data); end
  def store_translations(locale, data, options = T.unsafe(nil)); end
end

ViewComponent::Translatable::I18nBackend::EMPTY_HASH = T.let(T.unsafe(nil), Hash)

module ViewComponent::WithContentHelper
  def with_content(value); end
end
