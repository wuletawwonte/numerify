# frozen_string_literal: true

require "test_helper"

class TestDecimalNumerals < Minitest::Test
  def test_convert_to_thai
    assert_equal "๐", "0".convert(:thai)
    assert_equal "๒", "2".convert(:thai)
    assert_equal "๑๐", "10".convert(:thai)
    assert_equal "๑๐๐", "100".convert(:thai)
    assert_equal "๑๒๓๔", "1234".convert(:thai)
    assert_equal "๕๖๗๘", "5678".convert(:thai)
    assert_equal "๑๒๓๔๕", 12_345.convert(:thai)
  end

  def test_convert_to_bengali
    assert_equal "০", "0".convert(:bengali)
    assert_equal "২", "2".convert(:bengali)
    assert_equal "১০", "10".convert(:bengali)
    assert_equal "১০০", "100".convert(:bengali)
    assert_equal "১২৩৪", "1234".convert(:bengali)
    assert_equal "৫৬৭৮", "5678".convert(:bengali)
    assert_equal "১২৩৪৫", 12_345.convert(:bengali)
  end

  def test_convert_to_devanagari
    assert_equal "०", "0".convert(:devanagari)
    assert_equal "२", "2".convert(:devanagari)
    assert_equal "१०", "10".convert(:devanagari)
    assert_equal "१००", "100".convert(:devanagari)
    assert_equal "१२३४", "1234".convert(:devanagari)
    assert_equal "५६७८", "5678".convert(:devanagari)
    assert_equal "१२३४५", 12_345.convert(:devanagari)
  end

  def test_convert_to_gujarati
    assert_equal "૦", "0".convert(:gujarati)
    assert_equal "૨", "2".convert(:gujarati)
    assert_equal "૧૦", "10".convert(:gujarati)
    assert_equal "૧૦૦", "100".convert(:gujarati)
    assert_equal "૧૨૩૪", "1234".convert(:gujarati)
    assert_equal "૫૬૭૮", "5678".convert(:gujarati)
    assert_equal "૧૨૩૪૫", 12_345.convert(:gujarati)
  end

  def test_convert_to_gurmukhi
    assert_equal "੦", "0".convert(:gurmukhi)
    assert_equal "੨", "2".convert(:gurmukhi)
    assert_equal "੧੦", "10".convert(:gurmukhi)
    assert_equal "੧੦੦", "100".convert(:gurmukhi)
    assert_equal "੧੨੩੪", "1234".convert(:gurmukhi)
    assert_equal "੫੬੭੮", "5678".convert(:gurmukhi)
    assert_equal "੧੨੩੪੫", 12_345.convert(:gurmukhi)
  end

  def test_convert_to_kannada
    assert_equal "೦", "0".convert(:kannada)
    assert_equal "೨", "2".convert(:kannada)
    assert_equal "೧೦", "10".convert(:kannada)
    assert_equal "೧೦೦", "100".convert(:kannada)
    assert_equal "೧೨೩೪", "1234".convert(:kannada)
    assert_equal "೫೬೭೮", "5678".convert(:kannada)
    assert_equal "೧೨೩೪೫", 12_345.convert(:kannada)
  end

  def test_convert_to_khmer
    assert_equal "០", "0".convert(:khmer)
    assert_equal "២", "2".convert(:khmer)
    assert_equal "១០", "10".convert(:khmer)
    assert_equal "១០០", "100".convert(:khmer)
    assert_equal "១២៣៤", "1234".convert(:khmer)
    assert_equal "៥៦៧៨", "5678".convert(:khmer)
    assert_equal "១២៣៤៥", 12_345.convert(:khmer)
  end

  def test_convert_to_lao
    assert_equal "໐", "0".convert(:lao)
    assert_equal "໒", "2".convert(:lao)
    assert_equal "໑໐", "10".convert(:lao)
    assert_equal "໑໐໐", "100".convert(:lao)
    assert_equal "໑໒໓໔", "1234".convert(:lao)
    assert_equal "໕໖໗໘", "5678".convert(:lao)
    assert_equal "໑໒໓໔໕", 12_345.convert(:lao)
  end

  def test_convert_to_malayalam
    assert_equal "൦", "0".convert(:malayalam)
    assert_equal "൨", "2".convert(:malayalam)
    assert_equal "൧൦", "10".convert(:malayalam)
    assert_equal "൧൦൦", "100".convert(:malayalam)
    assert_equal "൧൨൩൪", "1234".convert(:malayalam)
    assert_equal "൫൬൭൮", "5678".convert(:malayalam)
    assert_equal "൧൨൩൪൫", 12_345.convert(:malayalam)
  end

  def test_convert_to_myanmar
    assert_equal "၀", "0".convert(:myanmar)
    assert_equal "၂", "2".convert(:myanmar)
    assert_equal "၁၀", "10".convert(:myanmar)
    assert_equal "၁၀၀", "100".convert(:myanmar)
    assert_equal "၁၂၃၄", "1234".convert(:myanmar)
    assert_equal "၅၆၇၈", "5678".convert(:myanmar)
    assert_equal "၁၂၃၄၅", 12_345.convert(:myanmar)
  end
end
