defmodule Day1 do
  def fuel_requirement do
    File.stream!('lib/input.in')
    |> Stream.map(fn num ->
      String.trim(num)
      |> String.to_integer()
    end)
    |> Stream.map(&required_fuel/1)
    |> Enum.sum()
  end

  defp required_fuel(mass), do: div(mass, 3) - 2
end
