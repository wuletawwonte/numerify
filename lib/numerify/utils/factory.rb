# frozen_string_literal: true

module Numerify
  module Utils
    # A factory class to create numeral objects.
    class NumeralFactory
      def call(language)
        case language
        when :geez
          Geez.new
        when :roman
          Roman.new
        else
          raise ArgumentError, "Unknown language: #{language}"
        end
      end
    end
  end
end
