require 'spec_helper'
require_relative '../captcha.rb'

describe Captcha do
  describe 'solve' do
    subject {Captcha.solve input}

    context 'given 1122' do
      let(:input) {1122}
      it { is_expected.to eq 3 }
    end

    context 'given 1111' do
      let(:input) {1111}
      it { is_expected.to eq 4 }
    end

    context 'given 1234' do
      let(:input) {1234}
      it { is_expected.to eq 0 }
    end

    context 'given 91212129' do
      let(:input) {91212129}
      it { is_expected.to eq 9 }
    end
  end
  describe 'solve2' do
    subject {Captcha.solve2 input}

    context 'given 1212' do
      let(:input) {'1212'}
      it { is_expected.to eq 6 }
    end

    context 'given 1221' do
      let(:input) {'1221'}
      it { is_expected.to eq 0 }
    end

    context 'given 123425' do
      let(:input) {'123425'}
      it { is_expected.to eq 4 }
    end
  end
end
