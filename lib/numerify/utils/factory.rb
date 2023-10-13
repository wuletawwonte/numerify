# frozen_string_literal: true

require_relative "../converters/geez"
require_relative "../converters/roman"
require_relative "../converters/chinese"
require_relative "../converters/thai"
require_relative "../converters/bengali"
require_relative "../converters/devanagari"
require_relative "../converters/gujarati"
require_relative "../converters/gurmukhi"
require_relative "../converters/kannada"
require_relative "../converters/khmer"
require_relative "../converters/lao"

module Numerify
  module Utils
    # A factory class to create numeral objects.
    class NumeralFactory
      NUMERALCLASSES = {
        geez: Geez,
        roman: Roman,
        chinese: Chinese,
        thai: Thai,
        bengali: Bengali,
        devanagari: Devanagari,
        gujarati: Gujarati,
        gurmukhi: Gurmukhi,
        kannada: Kannada,
        khmer: Khmer,
        lao: Lao
      }.freeze

      def call(language)
        raise ArgumentError, "Invalid language" unless NUMERALCLASSES.key?(language.to_sym)

        NUMERALCLASSES[language.to_sym].new
      end
    end
  end
end
