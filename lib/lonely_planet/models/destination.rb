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

      def title_ascii
        @node['title-ascii']
      end
    end
  end
end
