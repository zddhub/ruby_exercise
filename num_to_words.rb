
def num_to_words(num)
  numList = split_num_by_1000(num)
  thousandToWordHash = { 0 => "", 1 => "thousand", 2 => "million", 3 => "billion", 4 => "trillion" }
  words = ""
  numList.each_with_index do |num, index|
    if index != numList.length-1
      words += convert_3digits_to_word(num) + " " + thousandToWordHash[numList.length-1 - index] + ", "
    else
      words += convert_3digits_to_word(num)
    end
  end
  words
end

def split_num_by_1000(num)
  list = []
  while num != 0 do
    list << num % 1000
    num = num / 1000
  end
  list.reverse
end

def convert_3digits_to_word(num)
  return if num > 1000

  numToWordHash = {
    0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
    6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
    11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
    16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
    20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
    70 => "seventy", 80 => "eighty", 90 => "ninety"
  }
  result = ""

  result += "#{numToWordHash[num / 100]} hundred " if num >= 100
  num = num % 100

  if num >= 20
    result += "#{numToWordHash[(num / 10) * 10]} " if num >= 20
    num = num % 10
  end

  result += "#{numToWordHash[num]}"
  result
end
