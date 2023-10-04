# frozen_string_literal: true

require "test_helper"

class TestNumerify < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Numerify::VERSION
  end

  def test_it_raises_error_for_unknown_language
    assert_raises(ArgumentError) { "12".convert(:unknown) }
  end

  def test_it_converts_numbers_below_ten
    assert_equal "፩", "1".convert
    assert_equal "፫", "3".convert
    assert_equal "፭", "5".convert
    assert_equal "፱", "9".convert
  end

  def test_it_converts_numbers_below_hundred
    assert_equal "፲", "10".convert
    assert_equal "፴፭", "35".convert
    assert_equal "፵", "40".convert
    assert_equal "፶፮", "56".convert
    assert_equal "፷፯", "67".convert
    assert_equal "፹፩", "81".convert
    assert_equal "፺", "90".convert
  end

  def test_it_works_with_integers
    assert_equal "፫", 3.convert
    assert_equal "፲", 10.convert
    assert_equal "፶፮", 56.convert
  end
end
