defmodule LongestCommonPrefixTest do
  use ExUnit.Case
  doctest LongestCommonPrefix

  test "test 1" do
    assert LongestCommonPrefix.longest_common_prefix(["flower","flow","flight"]) == "fl"
  end

  test "test 2" do
    assert LongestCommonPrefix.longest_common_prefix(["dog","racecar","car"]) == ""
  end

  test "test 3" do
    assert LongestCommonPrefix.longest_common_prefix(["dog","dog","dog"]) == "dog"
  end

  test "test 4" do
    assert LongestCommonPrefix.longest_common_prefix([]) == ""
  end

  test "test 5" do
    assert LongestCommonPrefix.longest_common_prefix(["interview", "internet", "internal"]) == "inter"
  end

end
