# frozen_string_literal: true
require 'nokogiri'
require_relative './views/destination_view'

module LonelyPlanet
  # Build Lonely Planet static Pages
  class DestinationPageBuilder
    def initialize(paths = {})
      @taxonomy = paths[:taxonomy]
      @destinations = paths[:destinations]
      @output = paths[:output]
    end

    def build
      proccess_taxonomies
      proccess_destinations
    end

    private

    def proccess_taxonomies
      @taxonomies = Models::Taxonomies.new xml(file(@taxonomy))
    end

    def proccess_destinations
      reader.each do |node|
        next unless node.name == 'destination' &&
                    node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
        nav = @taxonomies.find(node.attribute('atlas_id'))
        view = Views::DestinationView.new(destination(node),
                                          output: @output,
                                          template: template,
                                          navigation: nav)
        view.write
      end
    end

    def template
      LonelyPlanet.templates + '/destination.html.erb'
    end

    def reader
      Nokogiri::XML::Reader(file(@destinations))
    end

    def xml(input)
      Nokogiri::XML(input)
    end

    def destination(node)
      Models::Destination.new xml(node.outer_xml).at('./destination')
    end

    def file(path)
      File.open(path)
    end
  end
end
