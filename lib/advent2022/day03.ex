defmodule Advent2022.Day03.Part1 do
  @moduledoc """
  Part 1
  https://adventofcode.com/2022/day/3
  """

  def solve(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&find_repeated(&1))
    |> Enum.map(&priority(&1))
    |> Enum.sum()
  end

  def priority(input) do
    [char | _] = String.to_charlist(input)

    if char in ?a..?z do
      char - 96
    else
      char - 38
    end
  end

  defp find_repeated(input) do
    [a, b] = split(input)

    [res | _] = Enum.filter(a, fn char -> char in b end)
    res
  end

  defp split(input) do
    len = input |> String.length() |> div(2)

    [
      String.slice(input, 0..(len - 1)),
      String.slice(input, len..-1)
    ]
    |> Enum.map(fn str -> String.split(str, "", trim: true) end)
  end
end

defmodule Advent2022.Day03.Part2 do
  @moduledoc """
  Part 2
  https://adventofcode.com/2022/day/3
  """
  def solve(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.chunk_every(3)
    |> Enum.map(&find_badge(&1))
    |> Enum.map(&Advent2022.Day03.Part1.priority(&1))
    |> Enum.sum()
  end

  defp find_badge(input) do
    [a, b, c] = input |> Enum.map(fn str -> str |> String.split("", trim: true) end)

    [res | _] =
      a
      |> Enum.filter(fn char -> char in b end)
      |> Enum.filter(fn char -> char in c end)

    res
  end
end

defmodule Mix.Tasks.Day03 do
  use Mix.Task

  def run(_) do
    {:ok, input} = File.read("data/day03.txt")

    IO.puts("[Part 1]")
    IO.puts(Advent2022.Day03.Part1.solve(input))
    IO.puts("[Part 2]")
    IO.puts(Advent2022.Day03.Part2.solve(input))
  end
end
