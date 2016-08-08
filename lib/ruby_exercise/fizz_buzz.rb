def isFB(fb)
  if !fb.is_a?(Integer)
    puts "#{fb} is not a valid input!"
    return
  end

  fb_str = fb.to_s
  if (fb % 3 == 0 && fb % 5 == 0) || (fb_str.include?('3') && fb_str.include?('5'))
    puts 'Fizz Buzz'
  elsif fb % 3 == 0 || fb_str.include?('3')
    puts 'Fizz'
  elsif fb % 5 == 0 || fb_str.include?('5')
    puts 'Buzz'
  else
    puts fb
  end
end
