defmodule Primetweetbot.Twitter do

  alias Primetweetbot.Day

  def send_tweet(day, prime) do
    tweetDay = Day.suffix(day)
    status   = "#{tweetDay} prime number is #{prime}"
    ExTwitter.update(status)
  end

end