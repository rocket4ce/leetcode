defmodule TwoSum do
  @moduledoc """
  Documentation for `TwoSum`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TwoSum.two_sum([2,7,11,15], 9)
      [0,1]

  """
  def two_sum(nums, target) do
    nums
    |> Enum.with_index()
    |> Enum.reduce_while(%{}, fn {num, index}, acc ->
      complement = target - num
      if Map.has_key?(acc, complement) do
        {:halt, {Map.get(acc, complement), index}}
      else
        {:cont, Map.put(acc, num, index)}
      end
    end)
    |> case do
      {i, j} -> [i, j]
      _ -> :no_solution
    end
  end
end
