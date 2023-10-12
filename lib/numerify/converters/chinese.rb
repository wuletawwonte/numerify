# frozen_string_literal: true

require_relative "numeral_base"

# A class to convert to Chinese numerals.
class Chinese < NumeralBase
  CHINESE_NUMERALS = {
    0 => "",
    1 => "一",
    2 => "二",
    3 => "三",
    4 => "四",
    5 => "五",
    6 => "六",
    7 => "七",
    8 => "八",
    9 => "九",
    10 => "十",
    100 => "百",
    1000 => "千",
    10_000 => "万",
    100_000_000 => "亿"
  }.freeze

  def convert(arabic_number_string)
    arabic_number_string = arabic_number_string.to_s.strip
    return "" if arabic_number_string.empty?
    return "零" if arabic_number_string == "0"

    convert_to_chinese arabic_number_string
  end

  private

  def convert_to_chinese(value)
    value.chars.map.with_index do |digit, i|
      position = 10**(value.length - i - 1)
      position == 1 || digit == "0" ? CHINESE_NUMERALS[digit.to_i] : CHINESE_NUMERALS[digit.to_i] + CHINESE_NUMERALS[position]
    end.join
  end
end
