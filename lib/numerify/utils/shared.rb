# frozen_string_literal: true

module Numerify
  # A module to hold the utility methods.
  module Utils
    NUMERALS = %i[geez arabic roman english].freeze
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
      90 => "፺",
      100 => "፻",
      10_000 => "፼"
    }.freeze

    private

    def check_language?(language)
      NUMERALS.include?(language)
    end

    def prepend_zero(arabic_number_string)
      arabic_number_string.prepend("0") if arabic_number_string.length.odd?
      arabic_number_string
    end

    def group_by_two(arabic_number_string)
      arabic_number_string.split("").each_slice(2).to_a.map(&:join)
    end

    def single_digit_geez(number)
      return "" if number.to_i.zero?

      GEEZ_NUMERALS[number.to_i]
    end

    def double_digit_geez(number)
      number.split("").map.with_index do |item, i|
        i.zero? ? single_digit_geez(item.to_s << "0") : single_digit_geez(item)
      end
    end

    def convert_to_geez(arabic_number_string)
      arabic_number_string.map { |item| double_digit_geez(item) }.join
    end
  end
end
