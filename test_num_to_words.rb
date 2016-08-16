require "minitest/autorun"
require './num_to_words'

describe 'split_num_by_1000 function' do
  it 'has a argument with less than 3 numbers' do
    split_num_by_1000(1).must_equal [1]
    split_num_by_1000(11).must_equal [11]
    split_num_by_1000(111).must_equal [111]
  end

  it 'has a argument with less than 6 numbers' do
    split_num_by_1000(1111).must_equal [1, 111]
    split_num_by_1000(11111).must_equal [11, 111]
    split_num_by_1000(111111).must_equal [111, 111]
  end

  it 'has a argument with more numbers' do
    split_num_by_1000(1234567890).must_equal [1, 234, 567, 890]
  end

  it 'plays with zeros' do
    split_num_by_1000(1000000000).must_equal [1, 0, 0, 0]
    split_num_by_1000(1000000002).must_equal [1, 0, 0, 2]
    split_num_by_1000(1000).must_equal [1, 0]
  end
end

describe 'convert_3digits_to_word function' do
  it 'has a argument with 1 number' do
    convert_3digits_to_word(1).must_equal "one"
  end

  it 'has a argument with 2 numbers' do
    convert_3digits_to_word(11).must_equal "eleven"
  end

  it 'has a argument with 3 numbers' do
    convert_3digits_to_word(111).must_equal "one hundred eleven"
  end
end

describe 'test num_to_words function' do
  it 'can convert 1111 to one thousand one hundred eleven' do
    num_to_words(1111).must_equal 'one thousand, one hundred eleven'
  end

  it 'can convert num to words' do
    num_to_words(1111111111111).must_equal "one trillion, one hundred eleven billion, one hundred eleven million, one hundred eleven thousand, one hundred eleven"
  end

  it 'can get correct valid in specified number' do
    numToWordHash = {
      0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
      6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
      11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
      16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
      20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
      70 => "seventy", 80 => "eighty", 90 => "ninety"
    }
    numToWordHash.each do |key, value|
      num_to_words(key).must_equal key == 0 ? "zero" : value
    end
  end

  it 'play with zero' do
    num_to_words(101).must_equal 'one hundred one'
    num_to_words(1001).must_equal 'one thousand, one'
    num_to_words(10001).must_equal 'ten thousand, one'
    num_to_words(1000001).must_equal 'one million, one'
    num_to_words(1000000001).must_equal 'one billion, one'
    num_to_words(1000000000001).must_equal 'one trillion, one'

  end
end
