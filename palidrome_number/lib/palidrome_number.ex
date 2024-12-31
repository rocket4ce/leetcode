defmodule PalidromeNumber do
  @moduledoc """
  Documentation for `PalidromeNumber`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> PalidromeNumber.is_palindrome(121)
      true

  """
  def is_palindrome(x) do
    x = Integer.to_string(x)
    x == String.reverse(x)
  end
end
