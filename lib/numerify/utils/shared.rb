# frozen_string_literal: true

module Numerify
  # A module to hold the utility methods.
  module Utils
    NUMERALS = %i[geez arabic roman english].freeze

    def check_language?(language)
      NUMERALS.include?(language)
    end
  end
end
