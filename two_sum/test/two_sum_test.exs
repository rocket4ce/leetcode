defmodule TwoSumTest do
  use ExUnit.Case
  doctest TwoSum

  test "test one" do
    assert TwoSum.two_sum([2,7,11,15], 9) == [0,1]
  end

  test "test two" do
    assert TwoSum.two_sum([3,2,4], 6) == [1,2]
  end

  test "test three" do
    assert TwoSum.two_sum([3,3], 6) == [0,1]
  end

  test "test four" do
    assert TwoSum.two_sum([3,2,3], 6) == [0,2]
  end
end
