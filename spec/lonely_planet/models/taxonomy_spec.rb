# frozen_string_literal: true

require 'spec_helper'

describe LonelyPlanet::Models::Taxonomy do
  let(:data) do
    Nokogiri::XML(File.open(FIXTURES_PATH.join('taxonomy_test.xml')))
  end
  let(:taxonomies) { LonelyPlanet::Models::Taxonomies.new data }
  let(:atlas_id) { '355611' }
  subject(:taxonomy) { taxonomies.find(atlas_id) }
  describe '#name' do
    it { expect(taxonomy.name).to eq 'South Africa' }
  end
  describe '#children' do
    let(:children) { ['Cape Town', 'Free State', 'Gauteng', 'KwaZulu-Natal', 'Mpumalanga', 'The Drakensberg', 'The Garden Route'] }
    it { expect(taxonomy.children).to match_array(children) }
  end
  describe '#parent' do
    it { expect(taxonomy.parent).to eq 'Africa' }
  end
end
