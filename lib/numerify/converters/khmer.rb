# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Khmer < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "០",
    1 => "១",
    2 => "២",
    3 => "៣",
    4 => "៤",
    5 => "៥",
    6 => "៦",
    7 => "៧",
    8 => "៨",
    9 => "៩"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
