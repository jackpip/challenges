require 'spec_helper'

RSpec.describe StringReverser, type: :module do
  describe "StringReverser#reverse" do

    it "should result in nil when given a nil" do
      expect(StringReverser.reverse(nil)).to be nil
    end

    it "should be reversed when given a short string" do
      expect(StringReverser.reverse("hello")).to eq "olleh"
    end

    it "should be reversed when given a long string" do
      expect(StringReverser.reverse("It's peanut butter jelly time.")).to eq ".emit yllej rettub tunaep s'tI"
    end
    
  end
end