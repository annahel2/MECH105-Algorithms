# **False Position**
False Position is a root finding closed bracketing method
## Inputs
The inputs include: 
func: the function being evaluated
xl: the lower guess
xu: the upper guess
es: the desried relative error
maxit: the max number of iterations
## Outputs
The outputs include:
root: the root of the given problem
fx: the value of the function at the root
ea: the approximate relative error
iter: how many iterations were performed
## Limitations
False position is a closed bracketing method so it will take some time as opposed to an open bracketing method. However, it will always solve for the root. If the xl and xu do not encompass the root an error will be displayed on the code. 
