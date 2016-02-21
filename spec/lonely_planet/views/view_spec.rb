# frozen_string_literal: true

require 'spec_helper'

describe LonelyPlanet::Views::View do
  describe '#render' do
    let(:view) { LonelyPlanet::Views::View.new }
    context 'with locals variables' do
      let(:template) { FIXTURES_PATH.join('local_test.html.erb') }
      subject(:render) { view.render(template.to_s, local_test: 'test') }
      it 'renders replace local variable' do
        is_expected.to eq("<span>test</span>\n")
      end
    end
    context 'without locals variables' do
      let(:template) { FIXTURES_PATH.join('simple_test.html.erb') }
      subject(:render) { view.render(template.to_s) }
      it 'renders perform ruby code' do
        is_expected.to eq("<span>4</span>\n")
      end
    end
  end
end
