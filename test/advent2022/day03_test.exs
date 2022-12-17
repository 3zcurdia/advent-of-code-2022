defmodule Advent2022.Day03.Part1Test do
  use ExUnit.Case
  doctest Advent2022.Day03.Part1

  test "resolve score" do
    input = """
    vJrwpWtwJgWrhcsFMMfFFhFp
    jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
    PmmdzqPrVvPwwTWBwg
    wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
    ttgJtRGJQctTZtZT
    CrZsJsPPZsGzwwsLwLmpwMDw
    """

    assert 157 == Advent2022.Day03.Part1.solve(input)
  end
end

defmodule Advent2022.Day03.Part2Test do
  use ExUnit.Case
  doctest Advent2022.Day03.Part2

  test "resolve score" do
    input = """
    vJrwpWtwJgWrhcsFMMfFFhFp
    jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
    PmmdzqPrVvPwwTWBwg
    wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
    ttgJtRGJQctTZtZT
    CrZsJsPPZsGzwwsLwLmpwMDw
    """

    assert 70 == Advent2022.Day03.Part2.solve(input)
  end
end
