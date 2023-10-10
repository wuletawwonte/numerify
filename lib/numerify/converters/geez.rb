# frozen_string_literal: true

module Numerify
  module Converters
    # A class to convert to Geez script.
    class Geez < NumeralBase
      GEEZ_NUMERALS = {
        0 => "",
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

      def convert
        # Convert @value to Geez script
        @value = "0#{@value}" if @value.length.odd?
        add_delimiter group_by_two
      end

      private

      # To Geez numeral conversion methods

      def group_by_two
        @value.split("").each_slice(2).to_a.map(&:join)
      end

      def single_digit_geez(number)
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
        grouped_string.join
      end
    end
  end
end
