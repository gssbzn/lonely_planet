# frozen_string_literal: true

module LonelyPlanet
  module Models
    # Lonely Planet List of Locations
    class Taxonomies < XmlDocument
      def find(atlas_node_id)
        taxonomy = @node.at("//node[@atlas_node_id='#{atlas_node_id}']")
        return unless taxonomy
        Taxonomy.new(taxonomy)
      end
    end
  end
end
