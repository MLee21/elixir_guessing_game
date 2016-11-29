defmodule GuessingTest do
  use ExUnit.Case
  doctest Guessing

  test "Checking valid user input" do
    assert Guessing.check_user_input(5) == {:ok, 5}
    assert Guessing.check_user_input(9) == {:ok, 9}
    assert Guessing.check_user_input(10) == {:ok, 10}
  end

  test "Invalid user input" do
    # Check user input bigger than 10
    assert Guessing.check_user_input(11) == {:error, "11 is not a valid number. Please input a number between 1-10"}
    assert Guessing.check_user_input(22) == {:error, "22 is not a valid number. Please input a number between 1-10"}
  end
end
