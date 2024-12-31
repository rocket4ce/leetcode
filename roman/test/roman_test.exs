defmodule RomanTest do
  use ExUnit.Case
  doctest Roman

  test "retunr 3" do
    assert Roman.roman_to_int("III") == 3
  end

  test "return 4" do
    assert Roman.roman_to_int("IV") == 4
  end
end
