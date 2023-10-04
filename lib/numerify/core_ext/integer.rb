# frozen_string_literal: true

require_relative "../utils/shared"

# A patch to add the convert method to the Integer class.
class Integer
  include Numerify::Utils

  def convert(language = :geez)
    raise ArgumentError, "Unknown language #{language}" unless check_language?(language)

    convert_to_geez(to_s) if language == :geez
  end
end
