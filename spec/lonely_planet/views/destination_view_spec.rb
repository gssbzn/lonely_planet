# frozen_string_literal: true

require 'spec_helper'

describe LonelyPlanet::Views::DestinationView do
  describe '#write' do
    let(:destination) do
      instance_double('LonelyPlanet::Models::Destination', ascii_title: 'destiny')
    end
    let(:view) do
      LonelyPlanet::Views::DestinationView.new destination,
                                               output: 'output',
                                               template: 'template'
    end
    it 'should write a file to output with the template' do
      allow(view).to receive(:render) { 'my view' }
      expect(File).to receive(:write).with('output/destiny.html', 'my view')
      view.write
    end
  end
end
