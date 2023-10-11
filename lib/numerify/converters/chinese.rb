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
    arabic_number_string.to_s.strip
  end
end
