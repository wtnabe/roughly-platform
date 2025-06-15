# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"
require "standard/rake"
require "steep/rake_task"

Minitest::TestTask.create(:spec) do |t|
  t.libs << "spec"
  t.libs << "lib"
  t.test_globs = ["spec/**/*_spec.rb"]
end

Steep::RakeTask.new do |t|
  t.check.severity_level = :hint
end

task default: %i[standard spec steep]
