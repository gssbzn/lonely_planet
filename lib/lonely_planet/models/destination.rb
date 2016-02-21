# frozen_string_literal: true

require_relative './destination_info/history'
require_relative './destination_info/introduction'

module LonelyPlanet
  module Models
    # Describe a Loney Planet Destination
    class Destination < XmlDocument
      include DestinationInfo::History
      include DestinationInfo::Introduction

      def title
        @node['title']
      end

      def ascii_title
        @node['ascii_title']
      end
    end
  end
end
