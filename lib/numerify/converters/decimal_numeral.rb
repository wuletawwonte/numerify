# frozen_string_literal: true

# DecimalNumeralSystem module
module DecimalNumeral
  private

  def from_arabic(arabic_number_string, numeral_symbols)
    arabic_number_string = arabic_number_string.to_s.strip
    return "" if arabic_number_string.empty?

    arabic_number_string.chars.map { |digit| numeral_symbols[digit.to_i] }.join
  end
end
