defmodule Primetweetbot.Primes do

  def nth_prime(num) do
    cond do
      num == 1 -> 2
      num == 2 -> 3
      true     -> find_prime(nth_prime(num - 1) + 2)
    end
  end

  def find_prime(num) do
    cond do
      num == 2      -> 2
      is_prime(num) -> num
      true          -> find_prime(num + 2)
    end
  end

  def is_prime(num) do
    cond do
      num < 2                  -> false
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
