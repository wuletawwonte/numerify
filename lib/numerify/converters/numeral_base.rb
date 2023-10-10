# frozen_string_literal: true

module Numerify
  module Converters
    # A base class for numeral converters.
    class NumeralBase
      def convert
        raise NotImplementedError
      end
    end
  end
end
