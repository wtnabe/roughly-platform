# frozen_string_literal: true

source "https://rubygems.org"

gemspec

gem "rake", "~> 13.0"

gem "minitest", "~> 5.16"
gem "minitest-skip", "~> 0.0.3"
gem "minitest-power_assert", "~> 0.3.1"
gem "minitest-reporters", "~> 1.7"
gem "standard", "~> 1.3"

if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new("3.1")
  gem "steep", "~> 1.10"
  gem "activesupport", "< 7"
  gem "zeitwerk", "< 2.4"
end
if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new("3.4")
  gem "base64"
  gem "logger"
end
