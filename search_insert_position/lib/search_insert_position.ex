defmodule SearchInsertPosition do
  @moduledoc """
  Documentation for `SearchInsertPosition`.
  """

  @doc """

  Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

  You must write an algorithm with O(log n) runtime complexity.

  """
  @spec search_insert(nums :: [integer], target :: integer) :: integer
  def search_insert(nums, target) do
    binary_search(nums, target, 0, length(nums) - 1)
  end

  defp binary_search(_, _, left, right) when left > right do
    left
  end

  defp binary_search(nums, target, left, right) do
    mid = div(left + right, 2)

    cond do
      Enum.at(nums, mid) == target -> mid
      Enum.at(nums, mid) < target -> binary_search(nums, target, mid + 1, right)
      Enum.at(nums, mid) > target -> binary_search(nums, target, left, mid - 1)
    end
  end
end
