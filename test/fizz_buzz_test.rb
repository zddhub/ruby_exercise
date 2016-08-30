require "minitest/autorun"
require_relative "../exercise/fizz_buzz.rb"

class FizzBuzzTest < Minitest::Test
  include FizzBuzz
  
  def test_that_should_print_Fizz
    out, err = capture_io do
      isFB(3)
      isFB(13)
      isFB(301)
    end
    assert_equal "Fizz\n"*3, out
  end

  def test_that_should_print_Buzz
    out, err = capture_io do
      isFB(5)
      isFB(52)
      isFB(502)
    end
    assert_equal "Buzz\n"*3, out
  end

  def test_that_should_print_Fizz_Buzz
    out, err = capture_io do
      isFB(15)
      isFB(35)
    end
    assert_equal "Fizz Buzz\n"*2, out
  end

  def test_that_should_print_itself
    out, err = capture_io do
      isFB(2)
      isFB(-4)
    end
    assert_equal "2\n-4\n", out
  end

  def test_that_should_not_a_valid_input
    out, err = capture_io do
      isFB(3.14)
      isFB(false)
      isFB("string")
    end

    expected_out = <<EOF
3.14 is not a valid input!
false is not a valid input!
string is not a valid input!
EOF
    assert_equal expected_out, out
  end
end
