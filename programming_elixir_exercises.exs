#!/usr/bin/env elixir
defmodule ProgrammingElixir do
  def fizz_buzz(a, b, other) do
    case {a, b} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      {_, _} -> other
    end
  end

  def fizz_buzz_rem(number) do
    fizz_buzz(rem(number, 3),
              rem(number, 5),
              number)
  end
end

IO.puts "Programming Elixir"
IO.puts "=================="
IO.puts "FizzBuzz"
IO.puts "--------"
IO.puts ProgrammingElixir.fizz_buzz(0, 0, "Other")
IO.puts ProgrammingElixir.fizz_buzz(0, 1, "Other")
IO.puts ProgrammingElixir.fizz_buzz(1, 0, "Other")
IO.puts ProgrammingElixir.fizz_buzz(1, 1, "Other")
IO.puts "FizzBuzz Remainder"
IO.puts "------------------"
Enum.map(10..16, fn(num) -> IO.puts ProgrammingElixir.fizz_buzz_rem(num) end)

