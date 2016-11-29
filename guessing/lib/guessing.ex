defmodule Guessing do

  def check_user_input(number) when number <= 10 do
    {:ok, number}
  end

  def check_user_input(number) do
    {:error, "#{number} is not a valid number. Please input a number between 1-10"}
  end

  def convert_user_input(string) do
    String.to_integer(string)
  end

end
