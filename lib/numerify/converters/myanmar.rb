# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Myanmar < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "၀",
    1 => "၁",
    2 => "၂",
    3 => "၃",
    4 => "၄",
    5 => "၅",
    6 => "၆",
    7 => "၇",
    8 => "၈",
    9 => "၉"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
