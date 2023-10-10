# frozen_string_literal: false

module Numerify
  # A module to hold the utility methods.
  module Utils
    ROMAN_NUMERALS = {
      0 => "",
      1 => "I",
      5 => "V",
      10 => "X",
      50 => "L",
      100 => "C",
      500 => "D",
      1000 => "M"
    }.freeze

    private

    # To Roman numeral conversion methods
    def convert_to_roman(arabic_number_string)
      arabic_number_string = arabic_number_string.strip
      return convert_to_roman_below_two_thousand(arabic_number_string) if arabic_number_string.to_i < 2000

      ("M" * arabic_number_string.slice(0...-3).to_i) + convert_to_roman_below_two_thousand(arabic_number_string.slice(-3, 3))
    end

    def convert_to_roman_below_two_thousand(arabic_number_string)
      arabic_number_string.split("").map.with_index do |digit, i|
        position = 10**(arabic_number_string.length - i - 1)
        target = digit.to_i * position
        item = ROMAN_NUMERALS.keys.bsearch { |key| key >= target }
        convert_digit_to_roman(target, position, item)
      end.join
    end

    def convert_digit_to_roman(target, position, item)
      case target
      when item
        ROMAN_NUMERALS[item]
      when item - position
        ROMAN_NUMERALS[position] + ROMAN_NUMERALS[item]
      else
        rep = ((target - item) / position) + 5
        ROMAN_NUMERALS[item - (5 * position)] + (ROMAN_NUMERALS[position] * rep)
      end
    end
  end
end
