defmodule LengthLastWordTest do
  use ExUnit.Case
  doctest LengthLastWord

  test "test 1" do
    s = "Hello World"
    assert LengthLastWord.length_of_last_word() == 5
  end

  test "test 2" do
    s = "   fly me   to   the moon  "
    assert LengthLastWord.length_of_last_word() == 4
  end
end
