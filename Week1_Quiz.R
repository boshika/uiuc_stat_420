# Title     : Week1 Quiz
# Objective : R Warm-up & Basic Statistics
# Created by: boshikatara
# Created on: 5/20/21
comment('------------------- Practice Quiz ----------')

comment('Question 1: Calculate sum the log of each element of xx.')
x = 1:100
sum(log(x))

comment('Question 2: How many of the elements of a_vector are greater than or equal to 5?')
set.seed(42)
a_vector = rpois(250, lambda = 6)
a_vector
times_5 = a_vector[a_vector >= 5]
length(times_5)

comment('Question3: Create a new vector y, which adds 5 to the elements 
        stored in odd indices of x and subtracts 10 from the elements stored in 
        even indices of x.')
x = 1:100
x
y = ifelse(x %% 2 == 0, x - 10, x + 5)
y
sd(y)

comment('Question 4: Which of the following options would return the third 
        element of the list quiz_list? (Select all that apply.)')
quiz_list = list(
  x = c(1, 2),
  y = "Hello Quiz Taker",
  z = "z"
)
quiz_list$z
quiz_list[3]
quiz_list[[3]]





comment('------------------- Quiz 1 -----------------')
install.packages('MASS')
library(MASS)

comment('Question1:  How many individuals in the Melanoma dataset 
        from the MASS package died from a melanoma?')
melanoma = Melanoma
sum(melanoma['status'] == 1)

comment('Question2: What is the average age of individuals in the Melanoma 
        dataset from the MASS package who are alive?')
Melanoma
avg_age <- mean(melanoma$age[melanoma$status==1])
avg_age

comment('Question3: Which animal in the mammals dataset from the MASS package has the largest brain weight relative to its body weight (that is, the 
        largest brain weight to body weight ratio?')
mammals = mammals
mammals
max(mammals['body']/mammals['brain'])

comment('Question 4: Create side-by-side boxplots for each of the numeric variables in 
        the iris dataset. To do so, simply supply the usual function with a 
        dataframe of only the numeric variables of the dataset.')
boxplot(iris$Sepal.Length, data = iris)
boxplot(iris$Sepal.Width, data = iris)
boxplot(iris$Petal.Length, data = iris)
boxplot(iris$Petal.Width, data = iris)
boxplot(iris$Sepal.Length, data = iris)
boxplot(iris$Sepal.Width, 
        iris$Sepal.Length,
        iris$Petal.Length,
        iris$Petal.Width,
        xlab = "Iris Variables", 
        ylab = "Metrics",
        col  = "darkorange",
        border = "dodgerblue")
summary(iris)
sd(iris$Petal.Length)

comment('Question 6: Using the airquality dataset, what is the average wind 
        speed in May ?')
avg_wind <- mean(airquality$Wind[airquality$Month==5])
avg_wind

comment('Question 7: Using the airquality dataset, 
        what is the average ozone measurement?')
avg_ozone <- mean(airquality$Ozone, na.rm=TRUE)
avg_ozone

comment('Question 8: Using the airquality dataset, create a
        scatterplot?')
plot(airquality$Temp, airquality$Wind, main="Airquality: Temp vs Wind",
     xlab="Temp", ylab="Wind", pch=19)

comment('What proportion of the elements of x are larger than 2 in magnitude?')
set.seed(1337)
x = rnorm(10000)
p = length(x[abs(x)>2])/length(x)
p

comment('Question 9 : Write a function called f that has a single argument input with 
        a default value of 42 which is assumed to be a vector of numeric 
        values. The function should output a vector that is input but with 
        any negative values replaced with 0.')
f = function(input=42) {
  input
  replace(input, input<0, 0)
  # input[input < 0] <- 0
  # input
  
}
set.seed(42)
x = rnorm(100, mean = 0, sd = 10)
mean(f(input = x)) - f()

comment('Question 10: Create three vectors x0, x1, and y. Each should 
have a length of 30 and store the following:

x0: Each element should be the value 1 
x1: The first 30 square numbers, starting from 1 (so 1, 4, 9, etc.) 
y: The result of running the given code, after creating the other two vectors
Report the mean of the values stored in y.')
x0 = rep(1, 30)
data <- 1:30
x1 = data^2
set.seed(42)
y  = 5 * x0 + x1 + rnorm(n = 30, mean = 0 , sd = 1)
mean(y)

comment('Question 11: Create a matrix X with columns x0 and x1. Report the sum 
        of the elements in rows 17 and 19.  ')
x0 = rep(1, 30)
data <- 1:30
x1 = data^2
set.seed(42)
y  = 5 * x0 + x1 + rnorm(n = 30, mean = 0 , sd = 1)
mean(y)
m <- cbind(x0, x1)
sum(m[c(17,19),])

comment('Question 12: Use matrix operations to create a new matrix beta_hat 
defined as follows. Report the sum of the values stored in this matrix.')
comment('beta_hat = (X^transpose.X)^-1 . X^transpose . y')
x0 = rep(1, 30)
data <- 1:30
x1 = data^2
set.seed(42)
y  = 5 * x0 + x1 + rnorm(n = 30, mean = 0 , sd = 1)
X <- cbind(x0, x1)


beta_hat = solve(t(X)%*%X) %*% t(X) %*% y
sum(beta_hat)

comment('Question 13: Create a new variable y_hat which stores the result of 
the matrix operation, 
y^hat = Xβ
The result will be a 30×130×1 matrix. Perform and report the result of the 
following operation, 
∑=(y-y^hat)^2')
x0 = rep(1, 30)
data <- 1:30
x1 = data^2
set.seed(42)
y  = 5 * x0 + x1 + rnorm(n = 30, mean = 0 , sd = 1)
mean(y)
m <- cbind(x0, x1)
beta_hat = solve(t(m)%*%m) %*% t(m) %*% y
y_hat = m %*% beta_hat
sum((y-y_hat)^2)
 .

