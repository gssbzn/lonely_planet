# frozen_string_literal: true
require 'active_support/inflector'

module LonelyPlanet
  module Models
    # Shared logic for models that behave like and XML node
    class XmlDocument
      include ActiveSupport::Inflector
      attr_reader :node

      def initialize(node)
        @node = node
      end
    end
  end
end
