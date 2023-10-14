# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Thai < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "๐",
    1 => "๑",
    2 => "๒",
    3 => "๓",
    4 => "๔",
    5 => "๕",
    6 => "๖",
    7 => "๗",
    8 => "๘",
    9 => "๙"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
