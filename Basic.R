comment("-------------Expressions---------")
2+2
4*3
2/7
7-3
3^(-2)
2^(1/2)
pi
exp(1)
log(1)
?log
log(exp(1))
?loglin
a <- 10
"OR"
a = 10
?comment

comment("--------------TYPES--------------")
42.5
is.numeric(42.5)
is.double(42.5)
TRUE
is.logical(TRUE)
"Stat"
is.character("Stat")

comment("-------------Vectors are Homgenous---------")
c(1,2,3,4,5,6)
x <- c(1,2,3,4,5,6)
is.vector(x)
(y <- 1:100)

comment("-------------Combine Various Types, Results In Type Coeercesion---------")
c(42, "Boshika", TRUE)
c(42, TRUE)

comment("-------------Sequence Vectors and Repeating Vectors---------")
seq(from = 100, to = 200, by = 12.5)
rep("Boshika", times = 5)

comment("-------------Subsetting---------")
x[1]
x[1:3]
x[c(1,3,4)]
x[-2]
x[c(TRUE,FALSE,TRUE,FALSE,FALSE,FALSE)]
c(1:100, rep(42, times=10))[seq(2,20,by=2)]
x[x>=3]

comment("-------------Vectorization---------")
x=1:10
x + 1
log(x)

comment("-------------Programming Basics---------")
fib = c(1,2,3,4,5,6)
ifelse(fib*2==6, "M", "NM")
seq_num = c(11:20)
for (i in 1:5) {
  seq_num[i] = seq_num[i] * 10
}
seq_num

comment("-------------Easier Way-Avoid For Loops---------") 
x = 11:20
x = x * 10  
x

comment("-------------Functions---------")
silly_func = function(arg1, arg2, arg3=10){
  a = arg1 + arg2
  b = a + arg3
  
  c(a, b, a + b)
}
silly_func(20, 30)
silly_func(20, 30, 40)

comment("-------------Matrices---------")
x = 1:9
X = matrix(x, nrow = 3, ncol = 3)
X
X[1,2]
X[,2]
X[2,]

comment("-------------Alternate Ways to Create Matrices---------")
cbind(col1=1:10, col2=rev(1:10), col3=rev(10:1))

comment("-------------Matrix Operations---------")
Y = matrix(11:19, nrow = 3, ncol = 3)
X + Y
X - Y
X * Y
X / Y
Y %*% X
Z = matrix(c(9, 2, -3, 2, 4, -2, -3, -2, 16), 3)
Z
solve(Z)
?solve
diag(3)
