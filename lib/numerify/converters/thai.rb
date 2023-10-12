# frozen_string_literal: true

require_relative "numeral_base"

# A class to convert to Thai numerals.
class Thai < NumeralBase
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
    arabic_number_string = arabic_number_string.to_s.strip
    return "" if arabic_number_string.empty?

    arabic_number_string.chars.map { |digit| NUMERALS[digit.to_i] }.join
  end
end
