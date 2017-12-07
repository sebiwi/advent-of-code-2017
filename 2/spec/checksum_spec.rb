require 'spec_helper'
require_relative '../checksum.rb'

describe Checksum do
  describe 'solve' do
    let(:input) { [[5, 1, 9, 5], [7, 5, 3], [2, 4, 6, 8]] }
    subject { Checksum.solve(input) }
    it { is_expected.to eq 18 }
  end
  describe 'solve2' do
     let(:input) { [[5, 9, 2, 8], [9, 4, 7, 3], [3, 8, 6, 5]] }
     subject { Checksum.solve2 input }
     it { is_expected.to eq 9}
   end
end
