defmodule Guessing do

  def check_user_input(number) when number <= 10 do
    {:ok, number}
  end

  def check_user_input(number) do
    {:error, "#{number} is not a valid number. Please input a number between 1-10"}
  end

  def convert_user_input(string) do
    string |> String.strip |> String.to_integer
  end

  def compare_numbers(random_number, user_number) when random_number == user_number do
    {:ok, user_number}
  end

  def compare_numbers(random_number, user_number) when random_number != user_number do
    {:error, "Wrong! Your guess was #{user_number}, but the number is #{random_number}" }
  end

end
