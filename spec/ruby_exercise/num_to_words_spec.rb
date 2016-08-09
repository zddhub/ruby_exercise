require 'spec_helper'
require 'ruby_exercise/num_to_words'

describe 'split_num_by_1000 function' do
  it 'has a argument with less than 3 numbers' do
    expect(split_num_by_1000(1)).to eq([1])
    expect(split_num_by_1000(11)).to eq([11])
    expect(split_num_by_1000(111)).to eq([111])
  end

  it 'has a argument with less than 6 numbers' do
    expect(split_num_by_1000(1111)).to eq([1, 111])
    expect(split_num_by_1000(11111)).to eq([11, 111])
    expect(split_num_by_1000(111111)).to eq([111, 111])
  end

  it 'has a argument with more numbers' do
    expect(split_num_by_1000(1234567890)).to eq([1, 234, 567, 890])
  end
end

describe 'convert_3digits_to_word function' do
  it 'has a argument with 1 number' do
    expect(convert_3digits_to_word(1)).to eq("one")
  end

  it 'has a argument with 2 numbers' do
    expect(convert_3digits_to_word(11)).to eq("eleven")
  end

  it 'has a argument with 3 numbers' do
    expect(convert_3digits_to_word(111)).to eq("one hundred eleven")
  end
end

describe 'test num_to_words function' do

  it 'can convert 1111 to one thousand one hundred eleven' do
    expect(num_to_words(1111)).to eq('one thousand, one hundred eleven')
  end

  it 'can convert num to words' do
    expect(num_to_words(1111111111111)).to eq("one trillion, one hundred eleven billion, one hundred eleven million, one hundred eleven thousand, one hundred eleven")
  end
end