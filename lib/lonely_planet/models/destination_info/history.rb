# frozen_string_literal: true
require 'active_support/concern'
require_relative './info_collector'

module LonelyPlanet
  module Models
    module DestinationInfo
      # Collect History Info
      module History
        extend ActiveSupport::Concern
        include DestinationInfo::InfoCollector

        HISTORY = '//history//history//history'
        OVERVIEW = '//history//history//overview'

        def history
          @history ||= collect_info_for(@node,
                                        HISTORY)
        end

        def history?
          history&.any?
        end

        def history_overview
          @history_overview ||= collect_info_for(@node,
                                                 OVERVIEW)
        end

        def history_overview?
          history_overview&.any?
        end
      end
    end
  end
end
