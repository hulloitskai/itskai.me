# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `memory_profiler` gem.
# Please instead update this file by running `bin/tapioca gem memory_profiler`.

module MemoryProfiler
  class << self
    def report(opts = T.unsafe(nil), &block); end
    def start(opts = T.unsafe(nil)); end
    def stop; end
  end
end

class MemoryProfiler::CLI
  def run(argv); end

  private

  def option_parser(options); end
  def reporter_options(options); end
  def results_options(options); end
end

MemoryProfiler::CLI::BIN_NAME = T.let(T.unsafe(nil), String)
MemoryProfiler::CLI::DEFAULTS = T.let(T.unsafe(nil), Hash)
MemoryProfiler::CLI::REPORTER_KEYS = T.let(T.unsafe(nil), Array)
MemoryProfiler::CLI::RESULTS_KEYS = T.let(T.unsafe(nil), Array)
MemoryProfiler::CLI::STATUS_ERROR = T.let(T.unsafe(nil), Integer)
MemoryProfiler::CLI::STATUS_SUCCESS = T.let(T.unsafe(nil), Integer)
MemoryProfiler::CLI::VERSION_INFO = T.let(T.unsafe(nil), String)

class MemoryProfiler::Helpers
  # @return [Helpers] a new instance of Helpers
  def initialize; end

  def guess_gem(path); end
  def lookup_class_name(klass); end
  def lookup_location(file, line); end
  def lookup_string(obj); end
  def object_class(obj); end
end

MemoryProfiler::Helpers::KERNEL_CLASS_METHOD = T.let(T.unsafe(nil), UnboundMethod)

class MemoryProfiler::Monochrome
  def line(text); end
  def path(text); end
  def string(text); end
end

class MemoryProfiler::Polychrome
  def line(text); end
  def path(text); end
  def string(text); end

  private

  def bg_black(str); end
  def bg_blue(str); end
  def bg_brown(str); end
  def bg_cyan(str); end
  def bg_gray(str); end
  def bg_green(str); end
  def bg_magenta(str); end
  def bg_red(str); end
  def black(str); end
  def blue(str); end
  def bold(str); end
  def brown(str); end
  def cyan(str); end
  def gray(str); end
  def green(str); end
  def magenta(str); end
  def red(str); end
  def reverse_color(str); end
end

# Reporter is the top level API used for generating memory reports.
#
# @example Measure object allocation in a block
#   report = Reporter.report(top: 50) do
#   5.times { "foo" }
#   end
class MemoryProfiler::Reporter
  # @return [Reporter] a new instance of Reporter
  def initialize(opts = T.unsafe(nil)); end

  # Returns the value of attribute generation.
  def generation; end

  # Returns the value of attribute report_results.
  def report_results; end

  # Collects object allocation and memory of ruby code inside of passed block.
  def run(&block); end

  def start; end
  def stop; end

  # Returns the value of attribute top.
  def top; end

  # Returns the value of attribute trace.
  def trace; end

  private

  # Iterates through objects in memory of a given generation.
  # Stores results along with meta data of objects collected.
  def object_list(generation); end

  class << self
    # Returns the value of attribute current_reporter.
    def current_reporter; end

    # Sets the attribute current_reporter
    #
    # @param value the value to set the attribute current_reporter to.
    def current_reporter=(_arg0); end

    # Helper for generating new reporter and running against block.
    #
    # @option opts
    # @option opts
    # @option opts
    # @option opts
    # @param opts [Hash] the options to create a report with
    # @return [MemoryProfiler::Results]
    def report(opts = T.unsafe(nil), &block); end
  end
end

class MemoryProfiler::Results
  def allocated_memory_by_class; end
  def allocated_memory_by_class=(_arg0); end
  def allocated_memory_by_file; end
  def allocated_memory_by_file=(_arg0); end
  def allocated_memory_by_gem; end
  def allocated_memory_by_gem=(_arg0); end
  def allocated_memory_by_location; end
  def allocated_memory_by_location=(_arg0); end
  def allocated_objects_by_class; end
  def allocated_objects_by_class=(_arg0); end
  def allocated_objects_by_file; end
  def allocated_objects_by_file=(_arg0); end
  def allocated_objects_by_gem; end
  def allocated_objects_by_gem=(_arg0); end
  def allocated_objects_by_location; end
  def allocated_objects_by_location=(_arg0); end
  def normalize_path(path); end

  # Output the results of the report
  #
  # @option opts
  # @option opts
  # @option opts
  # @option opts
  # @option opts
  # @option opts
  # @option opts
  # @param options [Hash] the options for output
  # @param opts [Hash] a customizable set of options
  def pretty_print(io = T.unsafe(nil), **options); end

  def print_string_reports(io, options); end
  def register_results(allocated, retained, top); end
  def retained_memory_by_class; end
  def retained_memory_by_class=(_arg0); end
  def retained_memory_by_file; end
  def retained_memory_by_file=(_arg0); end
  def retained_memory_by_gem; end
  def retained_memory_by_gem=(_arg0); end
  def retained_memory_by_location; end
  def retained_memory_by_location=(_arg0); end
  def retained_objects_by_class; end
  def retained_objects_by_class=(_arg0); end
  def retained_objects_by_file; end
  def retained_objects_by_file=(_arg0); end
  def retained_objects_by_gem; end
  def retained_objects_by_gem=(_arg0); end
  def retained_objects_by_location; end
  def retained_objects_by_location=(_arg0); end
  def scale_bytes(bytes); end
  def string_report(data, top); end

  # Returns the value of attribute strings_allocated.
  def strings_allocated; end

  # Sets the attribute strings_allocated
  #
  # @param value the value to set the attribute strings_allocated to.
  def strings_allocated=(_arg0); end

  # Returns the value of attribute strings_retained.
  def strings_retained; end

  # Sets the attribute strings_retained
  #
  # @param value the value to set the attribute strings_retained to.
  def strings_retained=(_arg0); end

  # Returns the value of attribute total_allocated.
  def total_allocated; end

  # Sets the attribute total_allocated
  #
  # @param value the value to set the attribute total_allocated to.
  def total_allocated=(_arg0); end

  # Returns the value of attribute total_allocated_memsize.
  def total_allocated_memsize; end

  # Sets the attribute total_allocated_memsize
  #
  # @param value the value to set the attribute total_allocated_memsize to.
  def total_allocated_memsize=(_arg0); end

  # Returns the value of attribute total_retained.
  def total_retained; end

  # Sets the attribute total_retained
  #
  # @param value the value to set the attribute total_retained to.
  def total_retained=(_arg0); end

  # Returns the value of attribute total_retained_memsize.
  def total_retained_memsize; end

  # Sets the attribute total_retained_memsize
  #
  # @param value the value to set the attribute total_retained_memsize to.
  def total_retained_memsize=(_arg0); end

  private

  def dump_data(io, type, metric, name, options); end
  def dump_strings(io, type, options); end
  def print_output(io, topic, detail); end
  def print_title(io, title); end
  def total_memsize(stat_hash); end

  class << self
    def register_type(name, stat_attribute); end
  end
end

MemoryProfiler::Results::METRICS = T.let(T.unsafe(nil), Array)
MemoryProfiler::Results::NAMES = T.let(T.unsafe(nil), Array)
MemoryProfiler::Results::TYPES = T.let(T.unsafe(nil), Array)
MemoryProfiler::Results::UNIT_PREFIXES = T.let(T.unsafe(nil), Hash)

class MemoryProfiler::Stat
  # @return [Stat] a new instance of Stat
  def initialize(class_name, gem, file, location, memsize, string_value); end

  # Returns the value of attribute class_name.
  def class_name; end

  # Returns the value of attribute file.
  def file; end

  # Returns the value of attribute gem.
  def gem; end

  # Returns the value of attribute location.
  def location; end

  # Returns the value of attribute memsize.
  def memsize; end

  # Returns the value of attribute string_value.
  def string_value; end
end

class MemoryProfiler::StatHash < ::Hash
  include ::MemoryProfiler::TopN
end

module MemoryProfiler::TopN
  # Fast approach for determining the top_n entries in a Hash of Stat objects.
  # Returns results for both memory (memsize summed) and objects allocated (count) as a tuple.
  def top_n(max, metric_method); end
end

MemoryProfiler::VERSION = T.let(T.unsafe(nil), String)