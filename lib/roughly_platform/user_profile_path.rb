module RoughlyPlatform
  class Error < StandardError; end

  #
  # @attr_reader [String] linux
  # @attr_reader [String] windows
  # @attr_reader [String] macos
  #
  class Paths < ::Data.define(:linux, :windows, :macos); end

  class UserProfilePath
    def initialize(resolver:)
      @resolver = resolver
    end

    #
    # @param [String] home
    # @param [String] appdata
    # @return Paths
    #
    def pair(home: ENV["HOME"], appdata: ENV["APPDATA"])
      Paths.new(
        linux: File.join(home.to_s, ".config"),
        windows: appdata.to_s,
        macos: File.join(home.to_s, "Library/Application Support")
      )
    end

    #
    # @param [String] home
    # @param [String] appdata
    # @return [String]
    #
    def resolve(home: ENV["HOME"], appdata: ENV["APPDATA"])
      pair(home: home, appdata: appdata).send(@resolver.resolve)
    end
  end
end
