require "os"

module RoughlyPlatform
  #
  # @attr [singleton(OS)] os OS gem itself
  #
  class PlatformResolver
    #
    # @param [singleton(OS)] os
    #
    def initialize(os: OS)
      @os = os
    end

    #
    # @return [:linux | :windows | :macos | :unknown]
    #
    def resolve
      case @os
      when :linux?.to_proc then :linux
      when :freebsd?.to_proc then :linux
      when :windows?.to_proc then :windows
      when :cygwin?.to_proc then :windows
      when :mac?.to_proc then :macos
      else
        :unknown
      end
    end
  end
end
