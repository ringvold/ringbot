defmodule MsgParserTest do
  use ExUnit.Case
  doctest MsgParser

  hypixel_bytes =
    <<255, 0, 62, 0, 167, 0, 49, 0, 0, 0, 49, 0, 50, 0, 55, 0, 0, 0, 82, 0, 101, 0, 113, 0, 117,
      0, 105, 0, 114, 0, 101, 0, 115, 0, 32, 0, 77, 0, 67, 0, 32, 0, 49, 0, 46, 0, 56, 0, 45, 0,
      49, 0, 46, 0, 49, 0, 54, 0, 0, 0, 65, 0, 110, 0, 111, 0, 116, 0, 104, 0, 101, 0, 114, 0, 32,
      0, 66, 0, 117, 0, 110, 0, 103, 0, 101, 0, 101, 0, 32, 0, 115, 0, 101, 0, 114, 0, 118, 0,
      101, 0, 114, 0, 0, 0, 56, 0, 56, 0, 55, 0, 53, 0, 51, 0, 0, 0, 49, 0, 49, 0, 48, 0, 48, 0,
      48, 0, 48>>

  test "parses minecraft info" do
    bytes =
      <<255, 0, 35, 0, 167, 0, 49, 0, 0, 0, 49, 0, 50, 0, 55, 0, 0, 0, 49, 0, 46, 0, 49, 0, 54, 0,
        46, 0, 49, 0, 0, 0, 84, 0, 104, 0, 101, 0, 32, 0, 80, 0, 114, 0, 111, 0, 109, 0, 105, 0,
        115, 0, 101, 0, 100, 0, 32, 0, 87, 0, 65, 0, 78, 0, 0, 0, 48, 0, 0, 0, 50, 0, 48>>

    assert MsgParser.parse(bytes) == :world
  end
end