require 'spec_helper'

RSpec.describe Factorial, type: :module do
  describe "Factorial#of" do

    it "should result in nil when given nil" do
      expect(Factorial.of(nil)).to eq nil
    end

    it "should give the correct result when given a number" do
      expect(Factorial.of(13)).to eq 6227020800
    end
    
  end
end