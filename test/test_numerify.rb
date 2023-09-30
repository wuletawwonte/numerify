# frozen_string_literal: true

require "test_helper"

class TestNumerify < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Numerify::VERSION
  end

  def test_it_returns_string_convert
    assert_equal "convert Hello to geez", "Hello".convert
  end
end
