# frozen_string_literal: true
module LonelyPlanet
  # root folder
  def self.root
    File.dirname __dir__
  end

  # template folder
  def self.templates
    File.join root, 'templates'
  end
end
require_relative 'lonely_planet/version'
require_relative 'lonely_planet/models/xml_document'
require_relative 'lonely_planet/models/taxonomies'
require_relative 'lonely_planet/models/taxonomy'
require_relative 'lonely_planet/models/destination'
require_relative 'lonely_planet/destination_page_builder'
