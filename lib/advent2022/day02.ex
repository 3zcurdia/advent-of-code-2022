defmodule Advent2022.Day02.Part1 do
  @moduledoc """
  Part 1
  https://adventofcode.com/2022/day/2
  """

  def solve(input) do
    input
    |> decode()
    |> Enum.map(&score/1)
    |> Enum.sum()
  end

  defp score([:rock, b]) do
    cond do
      b == :rock -> 4
      b == :paper -> 8
      b == :scissors -> 3
    end
  end

  defp score([:paper, b]) do
    cond do
      b == :rock -> 1
      b == :paper -> 5
      b == :scissors -> 9
    end
  end

  defp score([:scissors, b]) do
    cond do
      b == :rock -> 7
      b == :paper -> 2
      b == :scissors -> 6
    end
  end

  def decode(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&decode_match/1)
  end

  defp decode_match(input) do
    input
    |> String.split(" ")
    |> Enum.map(&decode_word/1)
  end

  defp decode_word(input) do
    cond do
      input == "A" || input == "X" -> :rock
      input == "B" || input == "Y" -> :paper
      input == "C" || input == "Z" -> :scissors
    end
  end
end

defmodule Advent2022.Day02.Part2 do
  @moduledoc """
  Part 2
  https://adventofcode.com/2022/day/2
  """

  def solve(input) do
    :ok
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
