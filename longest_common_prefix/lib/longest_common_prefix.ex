defmodule LongestCommonPrefix do
  @moduledoc """
  Documentation for `LongestCommonPrefix`.
  """

  @doc """


  """
  def longest_common_prefix([]), do: ""
  def longest_common_prefix([single_string]), do: single_string

  def longest_common_prefix(strings) do
    Enum.reduce(strings, &common_prefix/2)
  end

  defp common_prefix(str1, str2) do
    str1
    |> String.graphemes()
    |> Enum.zip(String.graphemes(str2))
    |> Enum.take_while(fn {char1, char2} -> char1 == char2 end)
    |> Enum.map(&elem(&1, 0))
    |> Enum.join()
  end

end
