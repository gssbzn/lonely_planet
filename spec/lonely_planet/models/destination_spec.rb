# frozen_string_literal: true

require 'spec_helper'

describe LonelyPlanet::Models::Destination do
  let(:data) do
    Nokogiri::XML(File.open(FIXTURES_PATH.join('destination_test.xml')))
  end
  subject(:destination) do
    LonelyPlanet::Models::Destination.new data.at('./destination')
  end
  describe '#title' do
    it { expect(destination.title).to eq 'South Africa' }
  end
  describe '#title_ascii' do
    it { expect(destination.title_ascii).to eq 'South Africa' }
  end
  describe 'Concerns' do

    describe '::History' do
      describe '#history' do
        it { expect(destination.history).not_to be_empty }
      end
      describe '#history?' do
        it { expect(destination.history?).to be_truthy }
      end
      describe '#history_overview' do
        it { expect(destination.history_overview).not_to be_empty }
      end
      describe '#history_overview?' do
        it { expect(destination.history_overview?).to be_truthy }
      end
    end
    describe '::Introduction' do
      describe '#introduction' do
        it { expect(destination.introduction).not_to be_empty }
      end
      describe '#introduction?' do
        it { expect(destination.introduction?).to be_truthy }
      end
    end
  end
end
