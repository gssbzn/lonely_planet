# frozen_string_literal: true
require 'simplecov'
require 'coveralls'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_filter 'spec/support'
end

require_relative '../lib/lonely_planet'

FIXTURES_PATH = Pathname.new(File.expand_path('../fixtures/', __FILE__))
