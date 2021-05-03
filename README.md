# **LU Decomposition**
LU Decomposition turns a matrix of data into an upper and lower triangular matrix
## Inputs
Inputs include:
- A: a matrix of coefficients 
## Outputs 
Outputs include:
- L: a lower triangular matrix with ones along the diagonal
- U: upper triangular matrix containing the coefficients used to create the L matrix
- P: the pivot matrix, this enusre no division of zero
## Limitations
For the LU Decomposition to work the matrix 'A' must have square dimensions (ex. 4x4, 4x3 will return an error)
