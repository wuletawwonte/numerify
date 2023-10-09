# frozen_string_literal: true

require_relative "../utils/shared"

# A patch to add the convert method to the String class.
class String
  include Numerify::Utils

  def convert(language = :geez)
    case language
    when :geez
      convert_to_geez(self)
    when :roman
      convert_to_roman(self)
    else
      raise ArgumentError, "Unknown language #{language}"
    end
  end
end
