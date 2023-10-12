# frozen_string_literal: true

require_relative "../converters/geez"
require_relative "../converters/roman"
require_relative "../converters/chinese"

module Numerify
  module Utils
    # A factory class to create numeral objects.
    class NumeralFactory
      def call(language) # rubocop:disable Metrics/MethodLength
        case language
        when :geez
          Geez.new
        when :roman
          Roman.new
        when :chinese
          Chinese.new
        when :thai
          Thai.new
        else
          raise ArgumentError, "Unknown language: #{language}"
        end
      end
    end
  end
end
