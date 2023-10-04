# frozen_string_literal: false

module Numerify
  # A module to hold the utility methods.
  module Utils
    GEEZ_NUMERALS = {
      1 => "፩",
      2 => "፪",
      3 => "፫",
      4 => "፬",
      5 => "፭",
      6 => "፮",
      7 => "፯",
      8 => "፰",
      9 => "፱",
      10 => "፲",
      20 => "፳",
      30 => "፴",
      40 => "፵",
      50 => "፶",
      60 => "፷",
      70 => "፸",
      80 => "፹",
      90 => "፺"
    }.freeze
    ROMAN_NUMERALS = {
      1 => "I",
      5 => "V",
      10 => "X",
      50 => "L",
      100 => "C",
      500 => "D",
      1000 => "M"
    }.freeze

    private

    # To Geez numeral conversion methods

    def prepend_zero(arabic_number_string)
      return "0#{arabic_number_string}" if arabic_number_string.length.odd?

      arabic_number_string
    end

    def group_by_two(arabic_number_string)
      arabic_number_string.split("").each_slice(2).to_a.map(&:join)
    end

    def single_digit_geez(number)
      return "" if number.to_i.zero?

      GEEZ_NUMERALS[number.to_i]
    end

    def double_digit_geez(number, skip_one: false)
      return "" if skip_one

      number.split("").map.with_index do |item, i|
        i.zero? ? single_digit_geez(item.to_s << "0") : single_digit_geez(item)
      end.join
    end

    def add_delimiter(grouped_string)
      last_index = grouped_string.length - 1
      last_index.downto(0) do |i|
        if i == last_index
          grouped_string[i] = double_digit_geez(grouped_string[i])
          next
        end

        delimiter = i.even? ? "፻" : "፼"
        grouped_string[i] = double_digit_geez(grouped_string[i], skip_one: grouped_string[i].to_i == 1) << delimiter
      end
      grouped_string
    end

    def convert_to_geez(arabic_number_string)
      grouped_string = group_by_two prepend_zero(arabic_number_string)
      add_delimiter(grouped_string).join
    end

    # To Roman numeral conversion methods

    def convert_to_roman(arabic_number_string); end
  end
end
