# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Kannada < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "೦",
    1 => "೧",
    2 => "೨",
    3 => "೩",
    4 => "೪",
    5 => "೫",
    6 => "೬",
    7 => "೭",
    8 => "೮",
    9 => "೯"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
