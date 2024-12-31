defmodule SearchInsertPositionTest do
  use ExUnit.Case
  doctest SearchInsertPosition

  test "test 1" do
    nums = [1,3,5,6]
    target = 5
    assert SearchInsertPosition.search_insert(nums, target) == 2
  end

  test "test 2" do
    nums = [1,3,5,6]
    target = 2
    assert SearchInsertPosition.search_insert(nums, target) == 1
  end

end
