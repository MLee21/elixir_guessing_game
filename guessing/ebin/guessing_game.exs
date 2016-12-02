Code.require_file("lib/guessing.ex")

defmodule GuessingGameUI do

  IO.puts "Elixir Guessing Game\n"
  IO.puts "----------------------------\n"

  :random.seed(:erlang.now())
  guest_number = :random.uniform(9) + 1

  user_input = IO.gets "Enter your guess: "
  
  {status, message} = Guessing.check_user_input(Guessing.convert_user_input(user_input))

  if status === :ok do 
    {compare_status, compare_message} = Guessing.compare_numbers(guest_number, message)

    if compare_status === :ok do 
      IO.inspect "You are the winner!"
    else
      IO.inspect compare_message
    end
  else
    IO.inspect message 
  end

end
