require "spec_helper"

describe RoughlyPlatform::PlatformResolver do
  describe "#resolve" do
    it "well-known platform" do
      assert {
        RoughlyPlatform::PlatformResolver.new.resolve != :unknown
      }
    end
  end
end
