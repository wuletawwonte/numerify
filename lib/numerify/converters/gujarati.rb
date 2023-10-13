# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Gujarati < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "૦",
    1 => "૧",
    2 => "૨",
    3 => "૩",
    4 => "૪",
    5 => "૫",
    6 => "૬",
    7 => "૭",
    8 => "૮",
    9 => "૯"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
