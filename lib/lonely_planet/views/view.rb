# frozen_string_literal: true

require 'erb'
require 'tilt'

module LonelyPlanet
  module Views
    # Logic to render an ERB template
    class View
      # Shared method to render ERB templates
      def render(template, locals = {})
        view(template).render(self, locals)
      end

      private

      def view(template)
        Tilt::ERBTemplate.new(template)
      end
    end
  end
end
