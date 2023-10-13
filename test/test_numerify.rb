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

  def test_it_defaults_to_geez_if_language_not_given
    assert_equal "፩", "1".convert
  end

  def test_it_converts_numbers_below_hundred_to_roman
    assert_equal "VII", "7".convert(:roman)
    assert_equal "X", "10".convert(:roman)
    assert_equal "XV", "15".convert(:roman)
    assert_equal "XX", "20".convert(:roman)
    assert_equal "XXXV", "35".convert(:roman)
    assert_equal "XL", "40".convert(:roman)
    assert_equal "L", "50".convert(:roman)
  end

  def test_it_converts_numbers_greater_than_hundred_to_roman
    assert_equal "DCCXXIV", "724".convert(:roman)
    assert_equal "M", "1000".convert(:roman)
    assert_equal "MCC", "1200".convert(:roman)
    assert_equal "MCD", "1400".convert(:roman)
    assert_equal "MD", "1500".convert(:roman)
    assert_equal "MCMXCIX", "1999".convert(:roman)
    assert_equal "MM", "2000".convert(:roman)
    assert_equal "MMMCMXCIX", "3999".convert(:roman)
  end

  def test_convert_to_chinese
    assert_equal "零", "0".convert(:chinese)
    assert_equal "二", "2".convert(:chinese)
    assert_equal "一十", "10".convert(:chinese)
    assert_equal "一百", "100".convert(:chinese)
    assert_equal "一千二百三十四", "1234".convert(:chinese)
    assert_equal "五千六百七十八", "5678".convert(:chinese)
    assert_equal "一万二千三百四十五", 12_345.convert(:chinese)
    assert_equal "一万二千三百四十五", 12_345.convert(:chinese)
  end

  def test_convert_to_thai
    assert_equal "๐", "0".convert(:thai)
    assert_equal "๒", "2".convert(:thai)
    assert_equal "๑๐", "10".convert(:thai)
    assert_equal "๑๐๐", "100".convert(:thai)
    assert_equal "๑๒๓๔", "1234".convert(:thai)
    assert_equal "๕๖๗๘", "5678".convert(:thai)
    assert_equal "๑๒๓๔๕", 12_345.convert(:thai)
  end
end
