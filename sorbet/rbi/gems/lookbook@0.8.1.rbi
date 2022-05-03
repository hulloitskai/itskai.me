# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `lookbook` gem.
# Please instead update this file by running `bin/tapioca gem lookbook`.

module ActionController::Base::HelperMethods
  include ::Turbo::DriveHelper
  include ::Turbo::FramesHelper
  include ::Turbo::IncludesHelper
  include ::Turbo::StreamsHelper
  include ::Turbo::Streams::ActionHelper
  include ::ActionText::ContentHelper
  include ::ActionText::TagHelper

  def alert(*args, **_arg1, &block); end
  def combined_fragment_cache_key(*args, **_arg1, &block); end
  def content_security_policy?(*args, **_arg1, &block); end
  def content_security_policy_nonce(*args, **_arg1, &block); end
  def cookies(*args, **_arg1, &block); end
  def form_authenticity_token(*args, **_arg1, &block); end
  def notice(*args, **_arg1, &block); end
  def protect_against_forgery?(*args, **_arg1, &block); end
  def view_cache_dependencies(*args, **_arg1, &block); end
end

module Lookbook
  extend ::ActiveSupport::Autoload
  extend ::Lookbook::Utils

  class << self
    def config; end
    def logger; end
    def pages; end
    def previews; end
    def railtie_helpers_paths; end
    def railtie_namespace; end
    def railtie_routes_url_helpers(include_path_helpers = T.unsafe(nil)); end
    def table_name_prefix; end
    def use_relative_model_naming?; end
    def version; end
  end
end

class Lookbook::ApplicationController < ::ActionController::Base
  def index; end

  protected

  def feature_enabled?(feature); end

  private

  def _layout(lookup_context, formats); end
  def _layout_from_proc; end

  class << self
    def __callbacks; end
    def _routes; end
    def _wrapper_options; end
    def controller_path; end
    def helpers_path; end
    def middleware_stack; end
  end
end

module Lookbook::ApplicationController::HelperMethods
  include ::Turbo::DriveHelper
  include ::Turbo::FramesHelper
  include ::Turbo::IncludesHelper
  include ::Turbo::StreamsHelper
  include ::Turbo::Streams::ActionHelper
  include ::ActionText::ContentHelper
  include ::ActionText::TagHelper
  include ::ActionController::Base::HelperMethods
  include ::Lookbook::ApplicationHelper
  include ::Lookbook::ComponentHelper
  include ::Lookbook::OutputHelper
  include ::Lookbook::Utils
  include ::Lookbook::PageHelper
  include ::Lookbook::PreviewHelper
end

module Lookbook::ApplicationHelper
  def config; end
  def feature_enabled?(name); end
  def landing_path; end
end

module Lookbook::CodeFormatter
  class << self
    def beautify(source, language = T.unsafe(nil)); end
    def highlight(source, language, opts = T.unsafe(nil)); end
  end
end

class Lookbook::CodeInspector
  include ::Lookbook::Utils

  # @return [CodeInspector] a new instance of CodeInspector
  def initialize(taggable_object_path); end

  # Returns the value of attribute code_object.
  def code_object; end

  def display_params; end
  def group; end
  def groups(*_arg0, **_arg1, &_arg2); end

  # @return [Boolean]
  def hidden?; end

  def id; end
  def label; end
  def methods; end
  def notes; end
  def parameter_defaults; end
  def params; end
  def position; end
  def source(*_arg0, **_arg1, &_arg2); end
end

class Lookbook::Collection
  include ::Lookbook::Utils
  include ::Enumerable

  # @return [Collection] a new instance of Collection
  def initialize(path = T.unsafe(nil), items = T.unsafe(nil)); end

  def add(item); end
  def as_tree(filter_hidden: T.unsafe(nil)); end
  def each(*_arg0, **_arg1, &_arg2); end
  def find(lookup = T.unsafe(nil), &block); end
  def find_by_id(id); end
  def find_by_path(path); end
  def find_first; end
  def find_next(item); end
  def find_parent(child); end
  def find_previous(item); end
  def get(name); end
  def get_or_create(name); end
  def hierarchy_depth; end
  def id; end
  def items; end
  def label; end
  def lookup_path; end
  def name; end
  def ordered_entities; end

  # Returns the value of attribute path.
  def path; end

  def position; end
  def size(*_arg0, **_arg1, &_arg2); end
  def type; end
  def visible_items; end

  protected

  def basename; end

  class << self
    def describe_as; end
  end
end

module Lookbook::ComponentHelper
  def code(language = T.unsafe(nil), **opts, &block); end
  def component(name, **attrs, &block); end
  def icon(name, size: T.unsafe(nil), **attrs); end
  def render_component(name, **attrs, &block); end

  private

  def build_tag_values(*args); end
end

class Lookbook::Connection < ::ActionCable::Connection::Base
  def connect; end
  def uid; end
  def uid=(_arg0); end

  class << self
    def identifiers; end
  end
end

class Lookbook::Engine < ::Rails::Engine
  class << self
    def __callbacks; end
    def mounted_path; end
    def parser; end

    # Returns the value of attribute preview_controller.
    def preview_controller; end

    def websocket; end
    def websocket_mount_path; end
  end
end

class Lookbook::Error < ::StandardError
  # @return [Error] a new instance of Error
  def initialize(original = T.unsafe(nil), title: T.unsafe(nil), message: T.unsafe(nil), file_path: T.unsafe(nil), file_name: T.unsafe(nil), line_number: T.unsafe(nil), source_code: T.unsafe(nil)); end

  def backtrace(*_arg0, **_arg1, &_arg2); end
  def file_lang; end
  def file_name; end
  def file_path; end
  def full_message(*_arg0, **_arg1, &_arg2); end
  def line_number; end
  def message; end
  def parsed_backtrace; end
  def source_code; end
  def source_code_lines; end
  def title; end
  def to_s(*_arg0, **_arg1, &_arg2); end

  protected

  def source_code_end_line(lines); end
  def source_code_highlighted_line(lines); end
  def source_code_start_line(lines); end
  def target; end
end

Lookbook::Error::LINES_AROUND = T.let(T.unsafe(nil), Integer)

module Lookbook::Features
  class << self
    def enabled; end

    # @return [Boolean]
    def enabled?(name); end

    # @return [Boolean]
    def experimental_feature?(name); end
  end
end

Lookbook::Features::EXPERIMENTAL_FEATURES = T.let(T.unsafe(nil), Array)

class Lookbook::Formatter < ::Rouge::Formatters::HTML
  # @return [Formatter] a new instance of Formatter
  def initialize(opts = T.unsafe(nil)); end

  def stream(tokens, &block); end
end

module Lookbook::Lang
  class << self
    def find(name); end
    def guess(path); end
  end
end

class Lookbook::Markdown
  class << self
    def render(text); end
  end
end

Lookbook::Markdown::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

class Lookbook::Markdown::Renderer < ::Redcarpet::Render::HTML
  def block_code(code, language = T.unsafe(nil)); end
end

module Lookbook::OutputHelper
  def beautify(source, language = T.unsafe(nil)); end
  def highlight(source, language, opts = T.unsafe(nil)); end
  def markdown(text = T.unsafe(nil), &block); end
end

class Lookbook::Page
  include ::Lookbook::Utils

  # @return [Page] a new instance of Page
  def initialize(path, base_path); end

  def content; end

  # Returns the value of attribute errors.
  def errors; end

  # @return [Boolean]
  def footer?; end

  def full_path; end
  def get(key); end

  # @return [Boolean]
  def header?; end

  # @return [Boolean]
  def hidden?; end

  def hierarchy_depth; end
  def lookup_path; end

  # @return [Boolean]
  def markdown?; end

  def matchers; end
  def method_missing(method_name, *args, &block); end
  def name; end
  def parent_collections_names; end
  def path; end
  def type; end

  protected

  def file_contents; end

  # @return [Boolean]
  def markdown_file?; end

  def options; end
  def path_name; end

  private

  # @return [Boolean]
  def respond_to_missing?(method_name, include_private = T.unsafe(nil)); end

  class << self
    def all; end

    # @return [Boolean]
    def exists?(path); end

    def find(path); end
    def page_paths; end
  end
end

Lookbook::Page::FRONTMATTER_FIELDS = T.let(T.unsafe(nil), Array)

class Lookbook::PageCollection < ::Lookbook::Collection
  def id; end

  class << self
    def describe_as; end
  end
end

class Lookbook::PageController < ::ActionController::Base
  def render_page(page, locals = T.unsafe(nil)); end

  private

  def _layout(lookup_context, formats); end
  def _layout_from_proc; end

  class << self
    def _routes; end
    def _wrapper_options; end
    def helpers_path; end
    def middleware_stack; end
  end
end

module Lookbook::PageController::HelperMethods
  include ::Turbo::DriveHelper
  include ::Turbo::FramesHelper
  include ::Turbo::IncludesHelper
  include ::Turbo::StreamsHelper
  include ::Turbo::Streams::ActionHelper
  include ::ActionText::ContentHelper
  include ::ActionText::TagHelper
  include ::ActionController::Base::HelperMethods
  include ::Lookbook::Utils
  include ::Lookbook::PageHelper
  include ::Lookbook::ApplicationHelper
  include ::Lookbook::ComponentHelper
  include ::Lookbook::OutputHelper
  include ::Lookbook::PreviewHelper
end

module Lookbook::PageHelper
  include ::Lookbook::Utils

  def embed(*args, params: T.unsafe(nil), type: T.unsafe(nil), **opts); end
  def page_path(id); end

  protected

  def embed_not_found; end
end

class Lookbook::PagesController < ::Lookbook::ApplicationController
  def index; end
  def show; end

  protected

  def page_controller; end

  private

  def _layout(lookup_context, formats); end
  def _layout_from_proc; end

  class << self
    def _wrapper_options; end
    def controller_path; end
    def helpers_path; end
    def middleware_stack; end
  end
end

module Lookbook::Params
  class << self
    def build_param(param, default); end
    def cast(value, type = T.unsafe(nil)); end
    def parse_method_param_str(param_str); end

    private

    # @return [Boolean]
    def boolean?(value); end

    def guess_input(type, default); end
    def guess_type(input, default); end

    # @return [Boolean]
    def input_text?(input); end

    def safe_parse_yaml(value, fallback); end
  end
end

class Lookbook::Parser
  # @return [Parser] a new instance of Parser
  def initialize(paths, registry_path); end

  def get_code_object(path); end
  def parse; end

  # Returns the value of attribute registry_path.
  def registry_path; end

  class << self
    def define_tags; end
  end
end

class Lookbook::Preview
  include ::Lookbook::Utils

  # @return [Preview] a new instance of Preview
  def initialize(preview); end

  def default_example; end
  def display_params; end
  def example(example_name); end
  def examples; end
  def full_path; end
  def group(*_arg0, **_arg1, &_arg2); end
  def hidden?(*_arg0, **_arg1, &_arg2); end
  def hierarchy_depth; end
  def id; end
  def label; end
  def layout; end
  def lookup_path; end
  def name(*_arg0, **_arg1, &_arg2); end
  def notes(*_arg0, **_arg1, &_arg2); end
  def parent_collections_names; end
  def path; end
  def position(*_arg0, **_arg1, &_arg2); end
  def preview_class; end
  def preview_paths; end
  def render_args(*_arg0, **_arg1, &_arg2); end
  def type; end

  class << self
    def all; end
    def clear_cache; end
    def errors; end

    # @return [Boolean]
    def exists?(path); end

    def find(path); end

    protected

    def load_previews; end
    def preview_files; end
  end
end

class Lookbook::PreviewCollection < ::Lookbook::Collection
  def find_example(path); end
  def id; end

  class << self
    def describe_as; end
  end
end

module Lookbook::PreviewController
  def render_example_to_string(preview, example_name); end
  def render_in_layout_to_string(template, locals, layout = T.unsafe(nil)); end
end

class Lookbook::PreviewExample
  include ::Lookbook::Utils

  # @return [PreviewExample] a new instance of PreviewExample
  def initialize(name, preview); end

  def display_params; end
  def group(*_arg0, **_arg1, &_arg2); end
  def hidden?(*_arg0, **_arg1, &_arg2); end
  def hierarchy_depth; end
  def id; end
  def label; end
  def lookup_path; end
  def matchers; end
  def method_source; end

  # Returns the value of attribute name.
  def name; end

  def notes(*_arg0, **_arg1, &_arg2); end
  def params(*_arg0, **_arg1, &_arg2); end
  def path; end
  def position(*_arg0, **_arg1, &_arg2); end

  # Returns the value of attribute preview.
  def preview; end

  def source(*_arg0, **_arg1, &_arg2); end
  def source_lang; end
  def template_lang(template_path); end
  def template_source(template_path); end
  def type; end

  protected

  def full_template_path(template_path); end

  class << self
    def all; end

    # @return [Boolean]
    def exists?(path); end

    def find(path); end
  end
end

class Lookbook::PreviewGroup
  include ::Lookbook::Utils

  # @return [PreviewGroup] a new instance of PreviewGroup
  def initialize(name, preview, examples); end

  def display_params; end

  # Returns the value of attribute examples.
  def examples; end

  # @return [Boolean]
  def hidden?; end

  def hierarchy_depth; end
  def id; end
  def label; end
  def lookup_path; end
  def matchers; end

  # Returns the value of attribute name.
  def name; end

  def params; end
  def path; end
  def position; end

  # Returns the value of attribute preview.
  def preview; end

  def type; end
end

module Lookbook::PreviewHelper
  def lookbook_display(key, fallback = T.unsafe(nil)); end
end

class Lookbook::PreviewsController < ::Lookbook::ApplicationController
  def preview; end
  def show; end

  private

  def _layout(lookup_context, formats); end
  def _layout_from_proc; end
  def drawer_panels; end
  def example_data(example); end
  def examples_data; end
  def lookup_entities; end
  def prettify_error(exception); end
  def preview_controller; end
  def preview_panels; end
  def render_examples(examples); end
  def render_in_layout(path, layout: T.unsafe(nil), **locals); end
  def set_params; end
  def set_title; end

  class << self
    def __callbacks; end
    def _wrapper_options; end
    def controller_path; end
    def helpers_path; end
    def middleware_stack; end
  end
end

class Lookbook::ReloadChannel < ::ActionCable::Channel::Base
  def subscribed; end
end

module Lookbook::Utils
  protected

  def class_name(klass); end
  def generate_id(*args); end
  def get_frontmatter(str); end
  def get_position_prefix(str); end
  def normalize_matchers(*matchers); end
  def preview_class_basename(klass); end
  def preview_class_name(klass); end
  def remove_position_prefix(str); end
  def strip_frontmatter(str); end
  def to_lookup_path(path); end
  def to_preview_path(*args); end

  private

  def parse_frontmatter(content); end
  def parse_position_prefix(str); end
end

Lookbook::Utils::FRONTMATTER_REGEX = T.let(T.unsafe(nil), Regexp)
Lookbook::Utils::POSITION_PREFIX_REGEX = T.let(T.unsafe(nil), Regexp)
Lookbook::VERSION = T.let(T.unsafe(nil), String)

class Redcarpet::Render::Base
  def initialize; end
end

class Redcarpet::Render::HTML < ::Redcarpet::Render::Base
  def initialize(*_arg0); end
end
