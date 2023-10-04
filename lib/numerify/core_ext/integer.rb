# frozen_string_literal: true

require_relative "../utils/shared"

# A patch to add the convert method to the Integer class.
class Integer
  include Numerify::Utils

  def convert(language = :geez)
    case language
    when :geez
      convert_to_geez(to_s)
    when :roman
      convert_to_roman(to_s)
    else
      raise ArgumentError, "Unknown language #{language}"
    end
  end
end
