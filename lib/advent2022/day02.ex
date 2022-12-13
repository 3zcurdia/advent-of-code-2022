defmodule Advent2022.Day02.Part1 do
  @moduledoc """
  Part 1
  https://adventofcode.com/2022/day/2
  """

  def solve(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&String.split/1)
    |> Enum.map(&score/1)
    |> Enum.sum()
  end

  # oponent rock
  defp score(["A", b]) do
    cond do
      b == "X" -> 4
      b == "Y" -> 8
      b == "Z" -> 3
    end
  end

  # oponent paper
  defp score(["B", b]) do
    cond do
      b == "X" -> 1
      b == "Y" -> 5
      b == "Z" -> 9
    end
  end

  # oponent scissors
  defp score(["C", b]) do
    cond do
      b == "X" -> 7
      b == "Y" -> 2
      b == "Z" -> 6
    end
  end
end

defmodule Advent2022.Day02.Part2 do
  @moduledoc """
  Part 2
  https://adventofcode.com/2022/day/2
  """
  def solve(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&String.split/1)
    |> Enum.map(&score/1)
    |> Enum.sum()
  end

  # oponent rock
  defp score(["A", b]) do
    cond do
      # scissors + 0
      b == "X" -> 3
      # rock + 3
      b == "Y" -> 4
      # paper + 6
      b == "Z" -> 8
    end
  end

  # oponent paper
  defp score(["B", b]) do
    cond do
      # rock + 0
      b == "X" -> 1
      # paper + 3
      b == "Y" -> 5
      # scissors + 6
      b == "Z" -> 9
    end
  end

  # oponent scissors
  defp score(["C", b]) do
    cond do
      # paper + 0
      b == "X" -> 2
      # scissors + 3
      b == "Y" -> 6
      # rock + 6
      b == "Z" -> 7
    end
  end
end

defmodule Mix.Tasks.Day02 do
  use Mix.Task

  def run(_) do
    {:ok, input} = File.read("data/day02.txt")

    IO.puts("[Part 1]")
    IO.puts(Advent2022.Day02.Part1.solve(input))
    IO.puts("[Part 2]")
    IO.puts(Advent2022.Day02.Part2.solve(input))
  end
end
