defmodule Primetweetbot.Day do

  @start_date ~D[2019-05-22]

  def suffix(day) do
    with day_str = Integer.to_string(day) do
      cond do
        String.last(day_str) == "1" -> "#{day}st"
        String.last(day_str) == "2" -> "#{day}nd"
        String.last(day_str) == "3" -> "#{day}rd"
        true                        -> "#{day}th"
      end
    end
  end

  def current_number do
    Timex.diff(Timex.today, @start_date, :days)
  end

end 