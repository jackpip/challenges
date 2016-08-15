require 'spec_helper'

RSpec.describe ArrayUtils, type: :module do
  describe "ArrayUtils#sort" do
    it "should sort an array of integers" do
      expect(ArrayUtils.sort([])).to eq []

      input = [1, 9, 4, 2, 99, 18]
      expect(ArrayUtils.sort(input)).to eq [1, 2, 4, 9, 18, 99]
    end
  end
end