defmodule FindIndeOccurrenceString do
  @moduledoc """
  Documentation for `FindIndeOccurrenceString`.
  """

  @doc """

  Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

  """
  @spec str_str(haystack :: String.t, needle :: String.t) :: integer

  def str_str(haystack, needle) do
    case :binary.match(haystack, needle) do
      {index, _length} -> index
      :nomatch -> -1
    end
  end

end
