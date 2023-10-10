# frozen_string_literal: true

require_relative "numerify/version"
require_relative "numerify/utils/factory"

# A module to convert numbers to numerals.
module Numerify
  class << self
    def convert(value, language = :geez)
      factory = Utils::NumeralFactory.new
      factory.call(language).convert(value)
    end
  end
end

puts Numerify.convert(1234)
