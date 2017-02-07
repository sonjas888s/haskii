require "spec_helper"

describe Haskii::BarChart do
  subject { described_class.new([2, 4, 6, 8, 6, 4, 2, 1, 6, 5, 4, 3, 2, 1]) }

  describe "#render" do
    it { expect(subject.render).to be_a_kind_of(Array) }

    let(:appropriate_data)  { ["   *          ",
                               "   *          ",
                               "  ***   *     ",
                               "  ***   **    ",
                               " *****  ***   ",
                               " *****  ****  ",
                               "******* ***** ",
                               "**************"] }
    it "returns appropriate data" do
      expect(subject.render).to eql(appropriate_data)
    end
  end

end