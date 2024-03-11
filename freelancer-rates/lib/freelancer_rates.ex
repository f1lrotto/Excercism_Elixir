defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    before_discount - (before_discount * (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    ceil(apply_discount(daily_rate(hourly_rate) * 22, discount))
  end

  def round_down_to_one_decimal(float) do
    Float.floor(float * 10) / 10
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    round_down_to_one_decimal(
      budget / apply_discount(daily_rate(hourly_rate),
      discount)
    )
  end
end
