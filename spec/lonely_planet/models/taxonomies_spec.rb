# frozen_string_literal: true

require 'spec_helper'

describe LonelyPlanet::Models::Taxonomies do
  let(:data) do
    Nokogiri::XML(File.open(FIXTURES_PATH.join('taxonomy_test.xml')))
  end
  let(:taxonomies) { LonelyPlanet::Models::Taxonomies.new data }
  describe '#find' do
    context 'with a valid id' do
      let(:atlas_id) { '355611' }
      it { expect(taxonomies.find(atlas_id)).to_not be_nil }
      it { expect(taxonomies.find(atlas_id)).to be_a(LonelyPlanet::Models::Taxonomy) }
    end
    context 'with invalid id' do
      let(:atlas_id) { 'xxx' }
      it { expect(taxonomies.find(atlas_id)).to be_nil }
    end
  end
end
