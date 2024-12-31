defmodule ValidParenthesesTest do
  use ExUnit.Case
  doctest ValidParentheses

  test "valid 1" do
    assert ValidParentheses.is_valid("()") == true
  end

  test "valid 7" do
    assert ValidParentheses.is_valid("([])") == true
  end

  test "valid 2" do
    assert ValidParentheses.is_valid("()[]{}") == true
  end


  test "invalid 1" do
    assert ValidParentheses.is_valid("(]") == false
  end

  test "invalid 2" do
    assert ValidParentheses.is_valid("([)]") == false
  end
end
