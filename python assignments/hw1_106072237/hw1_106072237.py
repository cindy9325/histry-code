import numpy as np
import matplotlib.pyplot as plt

A = np.array([[0, .5, 0, 0, 0, 0, 0, 0, 3.0/5, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
    [0, .25, 0, 0, 1.0/3, 0, 0, .25, 0, 0, 0, 0, 0],
    [0, .25, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
    [0, 0, 1.0/3, 0, 0, 1.0/7, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, .5, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 3/7, 0, .25, 0, 0, 0, 0, 0],
    [.5, 0, 2.0/3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [.5, 0, 0, 0, 0, 0, 0, .25, 0, 0, 0, 1, 0],
    [0, 0, 0, 0, 1.0/3, 0, 0, 0, .4, 0, 0, 0, 0],
    [0, 0, 0, 0, 1.0/3, 0, 0, 1.0/4, 0, 0, 0, 0, 0],
    [0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1],
    [0, 0, 0, 0, 0, 3.0/7, .5, 0, 0, 0, 0, 0, 0]])

v1 = np.array([[1], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0]])
v2 = np.array([[0], [1], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0]])
v3 = np.array([[0], [0], [1], [0], [0], [0], [0], [0], [0], [0], [0], [0], [0]])
v4 = np.array([[0], [0], [0], [1], [0], [0], [0], [0], [0], [0], [0], [0], [0]])
v5 = np.array([[0], [0], [0], [0], [1], [0], [0], [0], [0], [0], [0], [0], [0]])
v6 = np.array([[0], [0], [0], [0], [0], [1], [0], [0], [0], [0], [0], [0], [0]])
v7 = np.array([[0], [0], [0], [0], [0], [0], [1], [0], [0], [0], [0], [0], [0]])
v8 = np.array([[0], [0], [0], [0], [0], [0], [0], [1], [0], [0], [0], [0], [0]])
v9 = np.array([[0], [0], [0], [0], [0], [0], [0], [0], [1], [0], [0], [0], [0]])
v10 = np.array([[0], [0], [0], [0], [0], [0], [0], [0], [0], [1], [0], [0], [0]])
v = np.array([v1, v2, v3, v4, v5, v6, v7, v8, v9, v10])

def abssum(a, b):
    result = 0
    for i in range(len(a)):
        result += abs(a[i]-b[i])
    return result[0]

def difference(v , u):
    j = 0
    while diff[j] > 1e-5:
        v = u
        u = np.dot(A , v)
        diff.append(abssum(u , v))
        j = j + 1
    for i in range(len(v)):
        for k in range(len(v[i])):
            summation = 0
            summation += v[i][k]
    print (summation)
    return diff

for i in range(len(v)):
    u = np.dot(A , v[i])
    diff = [abssum(u , v[i])]
    print  ("summation of v[" , i + 1 , "] = ")
    difference(v[i] , u)
    plt.semilogy(range(len(diff)), diff)

plt.xlabel('iterations')
plt.ylabel('difference')
plt.title('Convergence')
plt.show()
