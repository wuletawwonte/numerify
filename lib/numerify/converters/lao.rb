# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Lao < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "໐",
    1 => "໑",
    2 => "໒",
    3 => "໓",
    4 => "໔",
    5 => "໕",
    6 => "໖",
    7 => "໗",
    8 => "໘",
    9 => "໙"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
