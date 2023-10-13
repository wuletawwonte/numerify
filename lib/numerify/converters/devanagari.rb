# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Devanagari < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "০",
    1 => "১",
    2 => "২",
    3 => "৩",
    4 => "৪",
    5 => "৫",
    6 => "৬",
    7 => "৭",
    8 => "৮",
    9 => "৯"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
