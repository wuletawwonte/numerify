# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Malayalam < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "൦",
    1 => "൧",
    2 => "൨",
    3 => "൩",
    4 => "൪",
    5 => "൫",
    6 => "൬",
    7 => "൭",
    8 => "൮",
    9 => "൯"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
