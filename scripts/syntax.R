#Getting Started
#Syntax and Semantics

2+2 #try this in the console as well


#save an R object

a <- 2 #check your Environment pane
b <- 4

a+b #this result can also be saved

sum_of_a_b <- a+b

print(sum_of_a_b)
sum_of_a_b

#commenting - adding # makes the line a comment and tells R not to evaluate it

#R is case sensitive

A <- 6
a <- 3

A + a
A+A
a+a

#functions
mean(c(1,2,3,4,5,6,7,8,9,10)) #what is "c" here?
#c is a function that combines values into a vector

mean(1:10)

mean(c(a,A))

mean(a,A)

#R is vectorized
#R is a vectorized language, which means that many operations are automatically applied to all elements of a vector.
x <- 1:4
y <- 6:9
z <- x + y  # Adds corresponding elements of x and y
print(z)    # Output: 7 9 11 13


#R is a functional language
#R is a functional language, which means that it treats functions as first-class objects.
#This means that functions can be passed as arguments to other functions and can be returned as values from other functions.
add_numbers <- function(a, b) {
  return(a + b)
}
add_numbers(3, 5) 

apply_function <- function(f, x) {
  return(f(x))
}
apply_function(sqrt, 16)  # Output: 4

#R is an interpreted language
#R is an interpreted language, which means that it executes code line by line.
#This is in contrast to compiled languages, which convert the entire code into machine code before executing it.

#R is dynamically typed
#R is dynamically typed, which means that you don't have to specify the type of a variable when you declare it.
#The type of a variable is determined at run time based on the value assigned to it.

class(A)

name <- "John Doe"

class(name)


