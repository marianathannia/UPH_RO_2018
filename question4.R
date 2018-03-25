# Set 2.2a - Question 4

library(lpSolveAPI)

#number of decision variables
varlin <- make.lp(0, 2)

#Objective function definition
set.objfn(varlin, c(2, 3))   
lp.control(varlin,sense='max')  

#Constraints
add.constraint(varlin, c(10, 5), "<=", 600)
add.constraint(varlin, c(6, 20), "<=", 600)
add.constraint(varlin, c(8, 10), "<=", 600)

# Non-Negativity
set.bounds(varlin, lower = c(0,0), columns = c(1,2))

varlin
solve(varlin)

get.variables(varlin)     #optimal value of D.V. - decision variables
get.objective(varlin)     #optimal value of objective function

plot.lpExtPtr(varlin)