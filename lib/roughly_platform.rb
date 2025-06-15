# frozen_string_literal: true

require "os"
require_relative "roughly_platform/version"
require_relative "roughly_platform/platform_resolver"
require_relative "roughly_platform/user_profile_path"

module RoughlyPlatform
  class Error < StandardError; end

  #
  # @return [:linux | :windows | :macos]
  #
  def os
    PlatformResolver.new.resolve
  end
  module_function :os

  #
  # @return [String]
  #
  def profile_path
    UserProfilePath.new(resolver: PlatformResolver.new).resolve
  end
  module_function :profile_path
end
