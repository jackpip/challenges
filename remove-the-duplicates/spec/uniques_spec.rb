require 'spec_helper'

RSpec.describe Uniques, type: :module do
  describe "uniques#cleanup" do
    
    it "should return the empty array when given an empty array" do
      arr = []
      expect(Uniques.cleanup(arr)).to eq []
    end

    it "should remove duplicates in an array with duplicate items in it" do
      arr = [1,5,"frog",2,1,3,"frog"]
      expect(Uniques.cleanup(arr)).to eq [1,5,"frog",2,3]
    end

  end
end