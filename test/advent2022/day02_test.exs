defmodule Advent2022.Day02.Part1Test do
  use ExUnit.Case
  doctest Advent2022.Day02.Part1

  test "decode message" do
    input = "A Y\nB X\nC Z"

    assert [[:rock, :paper], [:paper, :rock], [:scissors, :scissors]] ==
             Advent2022.Day02.Part1.decode(input)
  end

  test "resolve score" do
    input = "A Y\nB X\nC Z"
    assert 15 == Advent2022.Day02.Part1.solve(input)
  end
end

defmodule Advent2022.Day02.Part2Test do
  use ExUnit.Case
  doctest Advent2022.Day02.Part2

  # test "must sum the top tree" do
  #   input = "500\n\n1000\n\n2000\n\n5000\n\n3000\n\n400\n\n1000"
  #   assert 10000 == Advent2022.Day02.Part2.solve(input)
  # end
end
