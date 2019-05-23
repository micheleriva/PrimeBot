defmodule Primetweetbot do

  alias Primetweetbot.Day
  alias Primetweetbot.Primes
  alias Primetweetbot.Twitter

  def run do
    day    = Day.current_number()
    prime  = day |> Primes.nth_prime
    Twitter.send_tweet(day, prime)
  end

end

Primetweetbot.run()