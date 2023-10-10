# frozen_string_literal: true

require_relative "numerify/version"
require_relative "numerify/utils/factory"
require_relative "numerify/core_ext/string"
require_relative "numerify/core_ext/integer"

# A module to convert numbers to numerals.
module Numerify
  class << self
    def convert(value, language = :geez)
      factory = Utils::NumeralFactory.new
      factory.call(language).convert(value)
    end
  end
end
