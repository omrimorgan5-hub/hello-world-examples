defmodule MyApp do
    def main do
        name = IO.gets("What is your name: ")
        IO.puts("Hello, #{name}! Welcome to the elixir programming language!")
        current_time = DateTime.utc_now()
        IO.puts("The current time is: #{current_time}")
    end
end

MyApp.main()
# output:
# What is you name: {name}
# Hello, {name}!
# Welcome to the elixir programming language!
# The Current time is: {time}
