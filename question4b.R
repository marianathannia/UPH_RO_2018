# Set 2.2a - Question 4

library(lpSolveAPI)

#number of decision variables
varlin <- make.lp(0, 2)

#Objective function definition
set.objfn(varlin, c(8, 6))   
lp.control(varlin,sense='min')  

#Constraints
add.constraint(varlin, c(1, 0), ">=", 5)
add.constraint(varlin, c(1, 0), "<=", 12)
add.constraint(varlin, c(0, 1), ">=", 6)
add.constraint(varlin, c(0, 1), "<=", 10)
add.constraint(varlin, c(1, 1), "<=", 20)

# Non-Negativity
set.bounds(varlin, lower = c(0,0), columns = c(1,2))

varlin
solve(varlin)

get.variables(varlin)     #optimal value of D.V. - decision variables
get.objective(varlin)     #optimal value of objective function

plot.lpExtPtr(varlin)