require "spec_helper"

describe RoughlyPlatform do
  describe "#profile_path" do
    before { @path = RoughlyPlatform.profile_path }

    it {
      assert {
        @path.is_a? String
      }
    }

    it {
      assert {
        @path.size > 0
      }
    }
  end
end
