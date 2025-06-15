require "spec_helper"

describe RoughlyPlatform::UserProfilePath do
  describe "#resolve" do
    describe ":linux" do
      it "includes ~/.config" do
        assert {
          RoughlyPlatform::UserProfilePath.new(
            resolver: Struct.new(:resolve).new(:linux)
          ).resolve.include?(".config")
        }
      end
    end

    describe ":macos" do
      it "inludes Application Support" do
        assert {
          RoughlyPlatform::UserProfilePath.new(
            resolver: Struct.new(:resolve).new(:macos)
          ).resolve.include?("Application Support")
        }
      end
    end
  end
end
