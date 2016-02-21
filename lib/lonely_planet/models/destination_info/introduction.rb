# frozen_string_literal: true
require 'active_support/concern'
require_relative './info_collector'

module LonelyPlanet
  module Models
    module DestinationInfo
      # Collect Introduction Info
      module Introduction
        extend ActiveSupport::Concern
        include DestinationInfo::InfoCollector

        SCOPE = '//introductory//introduction//overview'

        def introduction
          @introduction ||= collect_info_for(@node,
                                             SCOPE)
        end
        def introduction?
          introduction&.any?
        end
      end
    end
  end
end
