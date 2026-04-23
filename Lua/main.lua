function main()
	print("What is your name: ")
	local name = io.read()
	print("Hello, " .. name .. "!")
	print("Welcome to the lua programming language!")
	local current_time = os.date("%Y-%m-%d %H:%M:%S")
	print("The current time is: " .. current_time)
end

main()
