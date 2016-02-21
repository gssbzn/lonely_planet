# frozen_string_literal: true
require 'active_support/concern'

module LonelyPlanet
  module Models
    module DestinationInfo
      # Collect node text
      module InfoCollector
        extend ActiveSupport::Concern

        def collect_info_for(node, xpath)
          node.xpath(xpath).collect(&:text)
        end
      end
    end
  end
end
