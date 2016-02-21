# frozen_string_literal: true
require 'spec_helper'

describe LonelyPlanet do
  it 'has a version number' do
    expect(LonelyPlanet::VERSION).not_to be nil
  end
  describe '::root' do
    it { expect(LonelyPlanet.root).to include('/lonely_planet') }
  end
  describe '::templates' do
    it { expect(LonelyPlanet.templates).to include('/templates') }
  end
end
