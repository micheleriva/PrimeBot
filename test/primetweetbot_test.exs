defmodule PrimetweetbotTest do
  use ExUnit.Case
  doctest Primetweetbot

  test "greets the world" do
    assert Primetweetbot.hello() == :world
  end
end
