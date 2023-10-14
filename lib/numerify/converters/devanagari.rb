# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Devanagari < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "०",
    1 => "१",
    2 => "२",
    3 => "३",
    4 => "४",
    5 => "५",
    6 => "६",
    7 => "७",
    8 => "८",
    9 => "९"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
