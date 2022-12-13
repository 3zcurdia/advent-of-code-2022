defmodule Advent2022.Day01.Part1Test do
  use ExUnit.Case
  doctest Advent2022.Day01.Part1

  test "split string to fetch sum report" do
    assert 5000 == Advent2022.Day01.Part1.sum_report("2000\n3000")
  end
end

defmodule Advent2022.Day01.Part2Test do
  use ExUnit.Case
  doctest Advent2022.Day01.Part2

  test "must sum the top tree" do
    input = "500\n\n1000\n\n2000\n\n5000\n\n3000\n\n400\n\n1000"
    assert 10000 == Advent2022.Day01.Part2.solve(input)
  end
end
