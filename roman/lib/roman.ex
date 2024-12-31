defmodule Roman do
  @moduledoc """
  Documentation for `Roman`.
  """

  @doc """
  Return integer when given a roman numeral.

  ## Examples

      iex> Roman.roman_to_int("III")
      3

      iex> Roman.roman_to_int("IV")
      4

      iex> Roman.roman_to_int("IX")
      9

      iex> Roman.roman_to_int("XIV")
      14

      iex> Roman.roman_to_int("LVIII")
      58

      iex> Roman.roman_to_int("MCMXCIV")
      1994

  """
  def roman_to_int(s) do
    s
    |> String.codepoints()
    |> Enum.map(&parse_roman_number/1)
    |> validate_roman()
  end

  defp validate_roman(arr) do
    Enum.reduce(0..(length(arr) - 1), 0, fn index, total ->
      current = Enum.at(arr, index)
      next = Enum.at(arr, index + 1, 0)

      if current < next do
        total - current
      else
        total + current
      end
    end)
  end

  defp parse_roman_number(roman) do
    case roman do
      "I" -> 1
      "V" -> 5
      "X" -> 10
      "L" -> 50
      "C" -> 100
      "D" -> 500
      "M" -> 1000
      _ -> 0
    end
  end

end