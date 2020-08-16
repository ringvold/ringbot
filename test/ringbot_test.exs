defmodule RingbotTest do
  use ExUnit.Case
  doctest Ringbot

  test "greets the world" do
    bytes =
      <<255, 0, 35, 0, 167, 0, 49, 0, 0, 0, 49, 0, 50, 0, 55, 0, 0, 0, 49, 0, 46, 0, 49, 0, 54, 0,
        46, 0, 49, 0, 0, 0, 84, 0, 104, 0, 101, 0, 32, 0, 80, 0, 114, 0, 111, 0, 109, 0, 105, 0,
        115, 0, 101, 0, 100, 0, 32, 0, 87, 0, 65, 0, 78, 0, 0, 0, 48, 0, 0, 0, 50, 0, 48>>

    assert MsgParser.parse(bytes) == :world
  end
end
