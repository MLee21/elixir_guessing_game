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

  test "Convert user input to integer" do
    assert Guessing.convert_user_input("4\n") == 4
  end

  test "Compare random number with user input that returns true" do
    random_number = 6
    user_number = 6

    assert Guessing.compare_numbers(random_number, user_number) == {:ok, user_number}
  end

  test "Compare random number with user input that returns false" do
    random_number = 7
    user_number = 2

    assert Guessing.compare_numbers(random_number, user_number) == {:error, "Wrong! Your guess was #{user_number}, but the number is #{random_number}" }
  end

end
