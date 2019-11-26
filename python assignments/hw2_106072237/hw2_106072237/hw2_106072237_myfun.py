import numpy as np
import math
from datetime import datetime
#---------------------------------------------------------------
def mydet(A):
    n = A.shape[0]
    if n == 1:
        return A[0][0]
    elif n == 2:
        return A[0][0]*A[1][1]-A[0][1]*A[1][0]
    else:
        det = 0
        for i in range(n):
            # compute minor M(0,i)
            if i == 0:
                M = A[1:n,1:n]
            elif i == n - 1:
                M = A[1:n,0:n-1]
            else:
                M = np.concatenate((A[1:n,0:i],A[1:n,i+1:n]) , axis = 1)
            ### you can use np.concatenate((A,B), axis=1) to merge two matrices

            # compute cofactor A(0,i) = (-1)^{i} det(M(0,i))
            det += A[0][i] * ((-1) ** (i + 2)) * mydet(M)
            ### call mydet recursively to compute det(M)

    return det
#---------------------------------------------------------------
def adjTransformer(A):
    n = A.shape[0]
    if n == 1:
        return A[0][0]
    if n == 2:
        A = np.array([[A[1][1],-A[0][1]],[-A[1][0],A[0][0]]])
        return A
    else:
        B = [[0 for x in range(n)] for y in range(n)]
        for i in range(A.shape[0]):
            for j in range(A.shape[0]):
                if i == 0 and j == 0:
                    B[j][i] = mydet(A[1:n,1:n])
                elif i == 0 and j == n - 1:
                    B[j][i] = math.pow(-1 , n-1) * mydet(A[1:n,0:n-1])
                elif i == n - 1 and j == 0:
                    B[j][i] = math.pow(-1 , n-1) * mydet(A[0:n-1,1:n])
                elif i == n - 1 and j == n - 1:
                    B[j][i] = math.pow(-1 , 2*n-2) * mydet(A[0:n-1,0:n-1])
                elif i == 0:
                    B[j][i] = math.pow(-1 , i+j) * mydet(np.concatenate((A[1:n,0:j] , A[1:n,j+1:n]) , axis = 1))
                elif i == n - 1:
                    B[j][i] = math.pow(-1 , i+j) * mydet(np.concatenate((A[0:n-1,0:j] , A[0:n-1,j+1:n]) , axis = 1))
                elif j == 0:
                    B[j][i] = math.pow(-1 , i+j) * mydet(np.concatenate((A[0:i,1:n] , A[i+1:n,1:n]) , axis = 0))
                elif j == n - 1:
                    B[j][i] = math.pow(-1 , i+j) * mydet(np.concatenate((A[0:i,0:n-1] , A[i+1:n,0:n-1]) , axis = 0))
                else:
                    C = np.concatenate((A[0:i,0:j] , A[0:i,j+1:n]) , axis = 1)
                    D = np.concatenate((A[i+1:n,0:j] , A[i+1:n,j+1:n]) , axis = 1)
                    E = np.concatenate((C , D) , axis = 0)
                    B[j][i] = math.pow(-1 , i+j) * mydet(E)
        return B

def mysolve_adj(A, b , detA):
    # TODO 1. solve Ax=b using adjoint matrix (using mydet)
    adjA = adjTransformer(A)
    reverseA = np.dot((1 / detA) , adjA)
    #print('reverse of A : \n' , reverseA)
    x = np.dot(reverseA , b)
    return x
#---------------------------------------------------------------
def mysolve_cramer(A, b, detA):
    # TODO 2. solve Ax=b using Cramer's rule (using mydet)
    n = A.shape[0]
    x = []
    for i in range(A.shape[0]):
        B = np.concatenate((A[:,0:i] , b) , axis = 1)
        C = np.concatenate((B , A[:,i + 1:n]) , axis = 1)
        x.append(mydet(C) / detA)
    return np.reshape(x , (n,1))
#---------------------------------------------------------------
