##############################################################
#                     OPERATIONS IN R                        #
#                                                            #
##############################################################

#Assignment Operators: =   or   <-  
x = 4
y <- 8

                     #Arithmetic Operators: 
#addition(+), minus(-), multiply(*), exponent(^ or **), divide(/), integer division(%/%), modulo(%%)
#Addition (+)
x + y

#Subtraction (-)
x - y

#Multiplication (*)
x * y

#Exponent (^ or **)
x ^ y
x ** y

#Division (/)
x / y

#Modulo (%%) - returns the remainder after division
x %% y
y %% x

#Integer Division (%/%) - returns the number of times a denominator gives into
# a numerator
x %/% y
y %/% x

### LOGICAL OPERATORS IN R - TRUE and FALSE [ and(&) , or(|) ]
z <- TRUE
f <- FALSE

TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE

TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE

### RELATIONAL OPERATORS
# Less than(<), Greater than(>), Less than or equal to(<=),
# Greater than or equal to (>=), Equal to (==), Not equal to (!=)
x < y
x > y
x <= y
x >= y
x == y
x != y


#Combine Relational Operators with Logical Operators (& and |)
x < y & x > y    #TRUE and FALSE
x >= y | x < y   #FALSE or TRUE
x < y & y > x    #TRUE and TRUE
x > y & y < x   #FALSE and FALSE
(x <= y & y < x) | y < z  #FALSE and TRUE: an alternative

