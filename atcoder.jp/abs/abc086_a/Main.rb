a,b = gets.split(" ").map(&:to_i);
print("#{ (a * b) % 2 == 0 ? "Even" : "Odd" }")