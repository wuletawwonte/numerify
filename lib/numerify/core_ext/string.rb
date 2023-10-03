# frozen_string_literal: true

require_relative "../utils/shared"

# A patch to add the convert method to the String class.
class String
  include Numerify::Utils

  def convert(language = :geez)
    raise ArgumentError, "Unknown language #{language}" unless check_language?(language)

    return convert_to_geez(self) if language == :geez
  end
end
