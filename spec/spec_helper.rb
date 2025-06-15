# frozen_string_literal: true

require "minitest/autorun"
require "minitest/spec"
require "minitest-power_assert"
require "minitest/skip_dsl"
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "roughly-platform"
