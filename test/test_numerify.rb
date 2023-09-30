# frozen_string_literal: true

require "test_helper"

class TestNumerify < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Numerify::VERSION
  end

  def test_it_returns_string_convert
    assert_equal "Converted to geez", "Hello".convert
  end

  def test_it_raises_error_for_unknown_language
    assert_raises(ArgumentError) { "Hello".convert(:unknown) }
  end
end
