defmodule ValidParentheses do
  @moduledoc """
  Documentation for `ValidParentheses`.
  """

  @doc """
  Open brackets must be closed by the same type of brackets.
  Open brackets must be closed in the correct order.
  Every close bracket has a corresponding open bracket of the same type.
  """
  def is_valid("()"), do: true
  def is_valid("[]"), do: true
  def is_valid("{}"), do: true

  def is_valid(s) do
    s
    |> String.graphemes()
    |> Enum.reduce([], fn char, stack ->
      case {char, stack} do
        {"(", _} -> ["(" | stack]
        {"[", _} -> ["[" | stack]
        {"{", _} -> ["{" | stack]
        {")", ["(" | rest]} -> rest
        {"]", ["[" | rest]} -> rest
        {"}", ["{" | rest]} -> rest
        {")", _} -> :error
        {"]", _} -> :error
        {"}", _} -> :error
        _ -> stack
      end
    end)
    |> case do
      [] -> true
      _ -> false
    end

  end

end
