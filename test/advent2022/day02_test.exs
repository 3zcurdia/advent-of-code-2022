defmodule Advent2022.Day02.Part1Test do
  use ExUnit.Case
  doctest Advent2022.Day02.Part1

  test "resolve score" do
    input = "A Y\nB X\nC Z"
    assert 15 == Advent2022.Day02.Part1.solve(input)
  end
end

defmodule Advent2022.Day02.Part2Test do
  use ExUnit.Case
  doctest Advent2022.Day02.Part2

  test "resolve score" do
    input = "A Y\nB X\nC Z"
    assert 12 == Advent2022.Day02.Part2.solve(input)
  end
end
