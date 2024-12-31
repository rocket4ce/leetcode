defmodule LengthLastWord do
  @moduledoc """
  Given a string s consisting of words and spaces, return the length of the last word in the string.

  A word is a maximal
  substring
  consisting of non-space characters only.
  """

  @spec length_of_last_word(s :: String.t) :: integer
  def length_of_last_word(s) do
    s
    |> String.trim()
    |> String.split(" ")
    |> Enum.reverse()
    |> Enum.find(&(&1 != ""))
    |> String.length()
  end
end
