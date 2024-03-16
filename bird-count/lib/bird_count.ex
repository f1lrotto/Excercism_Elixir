defmodule BirdCount do
  def today(list) do
    List.first(list)
  end

  def increment_day_count([]), do: [1]
  def increment_day_count([today | rest]) do
    [today + 1] ++ rest
  end

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([head | tail]) do
    cond do
      head == 0 -> true
      true -> has_day_without_birds?(tail)
    end
  end

  def total([]), do: 0
  def total([h | t]), do: h + total(t)

  def busy_days([]), do: 0
  def busy_days([h | t]) when h > 4, do: 1 + busy_days(t)
  def busy_days([_ | t]), do: busy_days(t)
end
