# frozen_string_literal: true

module LonelyPlanet
  module Models
    # Lonely Planet Location
    class Taxonomy < XmlDocument
      NAME = './node_name'
      def name
        @node.at(NAME).text
      end

      def children
        @node.children.xpath(NAME).collect(&:text)
      end

      def parent
        @node.parent.at(NAME)&.text
      end
    end
  end
end
