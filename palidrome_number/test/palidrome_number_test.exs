defmodule PalidromeNumberTest do
  use ExUnit.Case
  doctest PalidromeNumber

  test "test 1" do
    assert PalidromeNumber.is_palindrome(121) == true
  end

  test "test 2" do
    assert PalidromeNumber.is_palindrome(123) == false
  end

  test "test 3" do
    assert PalidromeNumber.is_palindrome(1221) == true
  end

  test "test 4" do
    assert PalidromeNumber.is_palindrome(-1221) == false
  end
end
