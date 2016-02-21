# frozen_string_literal: true

require 'spec_helper'

describe LonelyPlanet::Models::Destination do
  describe '#title' do
    subject(:destination) do
      LonelyPlanet::Models::Destination.new 'title' => 'Some title'
    end
    it { expect(destination.title).to eq 'Some title' }
  end
end
