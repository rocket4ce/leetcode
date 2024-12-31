defmodule FindIndeOccurrenceStringTest do
  use ExUnit.Case
  doctest FindIndeOccurrenceString

  test "valid 1" do
    assert FindIndeOccurrenceString.str_str("sadbutsad","sad") == 0
  end

  test "valid 2" do
    haystack = "leetcode"
    needle = "leeto"
    assert FindIndeOccurrenceString.str_str(haystack,needle) == -1
  end

  test "valid 3" do
    haystack = "hello"
    needle = "ll"
    assert FindIndeOccurrenceString.str_str(haystack,needle) == 2
  end
end
