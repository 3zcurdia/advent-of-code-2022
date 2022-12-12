defmodule Advent2022.Day01.Part1 do
  @moduledoc """
  Part 1
  https://adventofcode.com/2022/day/1
  """

  def elf_report(input) do
    input
    |> String.split("\n\n")
  end

  def sum_report(input) do
    input
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end

  def solve(input) do
    input
    |> elf_report()
    |> Enum.map(&sum_report/1)
    |> Enum.max
  end
end

defmodule Advent2022.Day01.Part2 do
  @moduledoc """
  Part 2
  https://adventofcode.com/2022/day/1
  """

  def solve(input) do
    :part_2
  end
end

defmodule Mix.Tasks.Day01 do
  use Mix.Task

  def run(_) do
    {:ok, input} = File.read("data/day01.txt")

    IO.puts("[Part 1]")
    IO.puts(Advent2022.Day01.Part1.solve(input))
    IO.puts("\n[Part 2]")
    IO.puts(Advent2022.Day01.Part2.solve(input))
  end
end
