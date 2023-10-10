# frozen_string_literal: true

# A base class for numeral converters.
class NumeralBase
  def convert
    raise NotImplementedError
  end
end
