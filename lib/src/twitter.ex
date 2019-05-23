defmodule Primetweetbot.Twitter do

  def send_tweet(day, prime) do
    with status = "#{day}th prime number is #{prime}" do
      ExTwitter.update(status)
    end
  end

end