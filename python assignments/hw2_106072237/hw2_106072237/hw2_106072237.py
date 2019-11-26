#Linear Algbra 2018 Assignment 2
from hw2_106072237_myfun import mydet, mysolve_cramer, mysolve_adj

import numpy as np
from datetime import datetime

A = np.array([[1,1,1,0,0,0,0,0,0,0,0,],
              [0,0,1,1,1,0,0,0,0,0,0],
              [0,0,0,0,1,1,1,0,0,0,0],
              [0,0,0,0,0,0,1,1,1,0,0],
              [0,0,0,0,0,0,0,0,1,1,1],
              [3,4,0,0,0,0,0,0,0,0,0],
              [0,4,-1,-2,0,0,0,0,0,0,0],
              [0,0,0,2,-5,-1,0,0,0,0,0],
              [0,0,0,0,0,1,-2,-6,0,0,0],
              [0,0,0,0,0,0,0,6,-7,-3,0],
              [0,0,0,0,0,0,0,0,0,3,-2]])


b = np.array([[0],[0],[0],[0],[0],[20],[0],[0],[0],[0],[13]])
detA = mydet(A)

# compute the determinant of A using numpy
print('determinant A from linalg.det is ',np.linalg.det(A))

# compute the determinant of A using mydet
### your code write in hw2_StudentID_myfun.py ("mydet" function) ###
print('determinant A from mydet is ', mydet(A))

# solve the linear system and measure the execution time
tStart = datetime.now()
x = np.linalg.solve(A, b)
print('x in np.linalg.solve \n' , x)
tEnd = datetime.now()
print("Time to solve Ax=b is ", tEnd-tStart, " seconds.\n")

# check the correctness
res = np.subtract(np.dot(A, x), b)
print('residuals of x of np.linalg.solve: \n', res, '\n')

# TODO 1. solve Ax=b using adjoint matrix (using mydet)
### your code write in hw2_StudentID_myfun.py ("mysolve_adj" function) ###
# execution time
tStart = datetime.now()
x = mysolve_adj(A, b, detA)
print('x in mysolve_adj:\n', x)
tEnd = datetime.now()
print("Execution Time of mysole_adj = ", tEnd-tStart, " seconds.\n")

# rediduals
res = np.subtract(np.linalg.solve(A,b) , x)
print('residuals of x of mysolve_adj:\n' , res, '\n')

# TODO 2. solve Ax=b using Cramer's rule (using mydet)
### your code write in hw2_StudentID_myfun.py ("mysolve_cramer" function) ###
# execution time
tStart = datetime.now()
x = mysolve_cramer(A, b, detA)
print('x in mysolve_cramer:\n', x)
tEnd = datetime.now()
print("Execution Time of mysolve_cramer = ", tEnd-tStart, " seconds.\n")

# rediduals
res = np.subtract(np.linalg.solve(A,b) , x)
print('residuals of x of mysolve_cramer: \n', res)
