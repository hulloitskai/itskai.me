# frozen_string_literal: true

# TODO: No longer necessary when https://github.com/pry/pry/pull/2209 is merged.
ENV["PAGER"] = " less --raw-control-chars -F -X"

require "rubygems"
require "interactive_editor"
