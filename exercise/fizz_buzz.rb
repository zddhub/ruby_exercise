module FizzBuzz
  Fizz = 3
  Buzz = 5

  def valid_input?(fb)
    fb.is_a?(Integer)
  end

  def isFB(fb)
    unless valid_input?(fb)
      puts "#{fb} is not a valid input!"
      return
    end

    fb_str = fb.to_s
    if (fb % Fizz == 0 && fb % Buzz == 0) || (fb_str.include?(Buzz.to_s) && fb_str.include?(Fizz.to_s))
      puts 'Fizz Buzz'
    elsif fb % Fizz == 0 || fb_str.include?(Fizz.to_s)
      puts 'Fizz'
    elsif fb % Buzz == 0 || fb_str.include?(Buzz.to_s)
      puts 'Buzz'
    else
      puts fb
    end
  end
end
