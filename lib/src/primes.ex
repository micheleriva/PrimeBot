defmodule Primetweetbot.Primes do

  def nth_prime(1),   do: 2
  def nth_prime(2),   do: 3
  def nth_prime(num) do
     nth_prime(num - 1) + 2
     |> find_prime
  end

  def find_prime(2),   do: 2
  def find_prime(num) do
    case is_prime?(num) do
      true -> num
      _    -> find_prime(num + 2)
    end
  end

  def is_prime?(num) when num < 2, do: false
  def is_prime?(num) do
    cond do
      Integer.mod(num, 2) == 0 -> false
      true                     -> test_prime(num, 3)
    end
  end

  def test_prime(m, i) do
    cond do
      Integer.mod(m, i) == 0 -> false
      :math.pow(i, 2) > m    -> true
      true                   -> test_prime(m, (i + 2))
    end
  end

end
