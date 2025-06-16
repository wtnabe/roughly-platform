# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"
require "standard/rake"

Minitest::TestTask.create(:spec) do |t|
  t.libs << "spec"
  t.libs << "lib"
  t.test_globs = ["spec/**/*_spec.rb"]
end

if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new("3.1")
  require "logger"
  require "steep/rake_task"
  Steep::RakeTask.new do |t|
    t.check.severity_level = :hint
  end
else
  task :steep do; end # rubocop: disable Standard/BlockSingleLineBraces
end

task default: %i[standard spec steep]
