defmodule Advent2022.Day01.Part1Test do
  use ExUnit.Case
  doctest Advent2022.Day01.Part1

  test "split string t fetch elf report" do
    assert ["2000\n3000", "4000"] == Advent2022.Day01.Part1.elf_report("2000\n3000\n\n4000")
  end

  test "split string to fetch sum report" do
    assert 5000 == Advent2022.Day01.Part1.sum_report("2000\n3000")
  end
end

defmodule Advent2022.Day01.Part2Test do
  use ExUnit.Case
  doctest Advent2022.Day01.Part2
end
