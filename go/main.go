package main

import(
	"fmt"
	"time"
)

func main(){
	var name string
	fmt.Print("Enter your name: ")
	fmt.Scan(&name)
	fmt.Printf("Hello, %s! Welcome to Go programming.\n", name)

	// Display current date and time
	currentTime := time.Now()
	fmt.Printf("Current date and time: %s\n", currentTime.Format("2006-01-02 15:04:05"))
}
