require 'spec_helper'

describe Believe do
  it 'has a version number' do
    expect(Believe::VERSION).not_to be nil
  end

  describe '#process' do
    let(:input) { 'My grandson gave me a sweater for Christmas' }
    let(:output) { Believe.process(input) }

    it 'converts to downcase' do
      expect(output.downcase).to eq(output)
    end

    it 'combines nouns with doge adjective' do
      expect(output).to match /so grandson./i
      expect(output).to match /such sweater./i
      expect(output).to match /very christmas./i
    end

    it 'always appends "wow."' do
      expect(output).to end_with 'wow.'
    end
  end
end
