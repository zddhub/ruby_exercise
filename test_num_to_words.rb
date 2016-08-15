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
end
