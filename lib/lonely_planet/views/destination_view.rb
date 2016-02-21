# frozen_string_literal: true
require_relative './view'

module LonelyPlanet
  module Views
    # Logic to render a Lonely Planet Destination
    class DestinationView < View
      def initialize(destination, options = {})
        @destination = destination
        @output = options.delete(:output)
        @template = options.delete(:template)
        @navigation = options.delete(:navigation)
      end

      def write
        File.write(file_destination, render(@template))
      end

      private

      def file_destination
        File.join(@output, file_name)
      end

      def file_name
        "#{@destination.ascii_title.parameterize}.html"
      end
    end
  end
end
