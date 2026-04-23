import datetime

def main():
    name = input("Enter a name: ")
    now = datetime.datetime.now()
    print(f"Hello, {name} Welcome to the Python programming language.")
    print(f"Current time: {now}")

if __name__ == "__main__":
    main()
