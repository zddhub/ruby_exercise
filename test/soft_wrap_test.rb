require "minitest/autorun"
require_relative "../exercise/soft_wrap.rb"

class SoftWrapTest < Minitest::Test
  def test_that_should_be_wrap_if_text_is_longer_than_max_length
    text = "abc" + " abc" * 5
    assert_equal "abc abc abc abc\nabc abc", wrap(text, 15)
  end

  def test_that_should_be_wrap_if_text_is_lower_than_max_length
    text = "abc" + " abc" * 3
    assert_equal "abc abc abc abc", wrap(text, 15)
  end

  def test_that_should_be_wrap_if_text_is_equal_than_max_length
    text = "abc" + " abc" * 3
    assert_equal "abc abc abc abc", wrap(text, 16)
  end

  def test_that_should_keep_itself_when_the_world_is_too_long
    text = "abc" * 10
    assert_equal text, wrap(text, 5)
  end

  def test_that_should_ignore_wrap_in_text_itself
    text = "abc\n" + " abc" * 5
    assert_equal "abc abc abc abc\nabc abc", wrap(text, 15)
  end
end
