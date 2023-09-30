# frozen_string_literal: true

require_relative "../utils/shared"

# A patch to add the convert method to the String class.
class String
  include Numerify::Utils

  def convert(language = :geez)
    raise ArgumentError, "Unknown language #{language}" unless check_language?(language)

    even_length_string = prepend_zero(self)
    grouped_string = group_by_two(even_length_string)

    convert_to_geez(grouped_string)
  end
end

puts "67".convert
