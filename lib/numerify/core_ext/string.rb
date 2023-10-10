# frozen_string_literal: true

require_relative "../utils/factory"

# A patch to add the convert method to the String class.
class String
  def convert(language = :geez)
    factory = Numerify::Utils::NumeralFactory.new
    factory.call(language).convert(self)
  end
end
