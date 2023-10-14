# frozen_string_literal: true

require_relative "numeral_base"
require_relative "decimal_numeral"

# A class to convert to Thai numerals.
class Gurmukhi < NumeralBase
  include DecimalNumeral
  NUMERALS = {
    0 => "੦",
    1 => "੧",
    2 => "੨",
    3 => "੩",
    4 => "੪",
    5 => "੫",
    6 => "੬",
    7 => "੭",
    8 => "੮",
    9 => "੯"
  }.freeze

  def convert(arabic_number_string)
    from_arabic(arabic_number_string, NUMERALS)
  end
end
