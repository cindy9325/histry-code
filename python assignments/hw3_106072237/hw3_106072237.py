# Linear Algebra 2018 Assignment 3

import numpy as np
import matplotlib.pyplot as plt
import math as m

# 8 points of a cube
points = np.array([[ 0, 0, 0, 0, 1, 1, 1, 1, 0.5],
                   [ 0, 0, 1, 1, 0, 0, 1, 1, 0.5],
                   [ 0, 1, 0, 1, 0, 1, 0, 1, 2]])

def plotcube(pt):
    """plot a cube described by pt. 
       T is the transition matrix that maps objects from a 3D space to a 2D screen.
       The viewport is at [1/2, 1/2, sqrt(2)/2]"""
    T = np.array([[m.sqrt(2)/m.sqrt(3), 0, -1/m.sqrt(3)],
                  [-1/m.sqrt(12),  m.sqrt(3)/2, -1/m.sqrt(6)]])
    
    def drawAxis():
        """ draw the axes of the 3D space"""
        X = np.dot(T, [[0,2],[0,0],[0,0]])
        Y = np.dot(T, [[0,0],[0,2],[0,0]])
        Z = np.dot(T, [[0,0],[0,0],[0,2]])
        plt.plot(X[0,:], X[1,:], 'b:')
        plt.plot(Y[0,:], Y[1,:], 'b:')
        plt.plot(Z[0,:], Z[1,:], 'b:')
        plt.text(X[0,1], X[1,1], r'x', fontsize=20)
        plt.text(Y[0,1], Y[1,1], r'y', fontsize=20)
        plt.text(Z[0,1]-0.1, Z[1,1], r'z', fontsize=20)

    def visible(p1, p2, p3):
        if(flag == 0):
            return True
        """output if the face is visible."""
        u1 = points[0, [p2]]-points[0, [p1]];
        u2 = points[1, [p2]]-points[1, [p1]];
        u3 = points[2, [p2]]-points[2, [p1]];
        v1 = points[0, [p3]]-points[0, [p1]];
        v2 = points[1, [p3]]-points[1, [p1]];
        v3 = points[2, [p3]]-points[2, [p1]];
        
        x_face = u2*v3-u3*v2;
        y_face = u3*v1-u1*v3;
        z_face = u1*v2-u2*v1;
        if((x_face*1/2 + y_face*1/2 + z_face*m.sqrt(2)/2)>0):
            return True
        else:
            return False
        
    def mapRectangle(p1, p2, p3, p4):
        """return two 1D arrays: X list and Y list from
           points[:, p1], points[:,p2], points[:, p3], points[:, p4]"""
        A = np.dot(T, points[:, [p1,p2,p3,p4,p1]])
        return A[0,:], A[1,:]
    
    def mapTriangle(p1, p2, p3):
        A = np.dot(T, points[:, [p1,p2,p3,p1]])
        return A[0,:], A[1,:]
        
    # plot face 1
    X1, Y1 = mapRectangle(0, 1, 3, 2)
    if(visible(0, 1, 3)):
        plt.plot(X1,Y1)

    # plot face 2
    X2, Y2 = mapRectangle(4, 6, 7, 5)
    if(visible(4, 6, 7)):
        plt.plot(X2,Y2)

    # plot face 3
    X3, Y3 = mapRectangle(0, 2, 6, 4)
    if (visible(0, 2, 6)):
        plt.plot(X3,Y3)

    # plot face 4
    '''X4, Y4 = mapRectangle(1, 5, 7, 3)
    if(visible(1, 5, 7)):
        plt.plot(X4,Y4)'''

    # plot face 5
    X5, Y5 = mapRectangle(0, 4, 5, 1)
    if(visible(0, 4, 5)):
        plt.plot(X5,Y5)

    # plot face 6
    X6, Y6 = mapRectangle(2, 3, 7, 6)
    if(visible(2, 3, 7)):
        plt.plot(X6,Y6)
        
    X7, Y7 = mapTriangle(8, 7, 3)
    if(visible(8, 7, 3)):
        plt.plot(X7,Y7)
    
    X8, Y8 = mapTriangle(8, 3, 1)
    if(visible(8, 3, 1)):
        plt.plot(X8,Y8)
        
    X9, Y9 = mapTriangle(8, 1, 5)
    if(visible(8, 1, 5)):
        plt.plot(X9,Y9)
        
    X10, Y10 = mapTriangle(5, 7, 8)
    if(visible(5, 7, 8)):
        plt.plot(X10,Y10)

    plt.axis('equal')
    drawAxis()
    if(flag == 0):
        if(i == 0):
            plt.savefig('106072237_obj0')
        if(i == 1):
            plt.savefig('106072237_obj1.jpg')
        if(i == 2):
            plt.savefig('106072237_obj2.jpg')
        if(i == 3):
            plt.savefig('106072237_obj3.jpg')
        if(i == 4):
            plt.savefig('106072237_obj4.jpg')
        if(i == 5):
            plt.savefig('106072237_obj5.jpg')
        if(i == 6):
            plt.savefig('106072237_obj6.jpg')
        if(i == 7):
            plt.savefig('106072237_obj7.jpg')
        if(i == 8):
            plt.savefig('106072237_obj8.jpg')
    else:
        if(i == 0):
            plt.savefig('106072237_obj0_hid.jpg')
        if(i == 1):
            plt.savefig('106072237_obj1_hid.jpg')
        if(i == 2):
            plt.savefig('106072237_obj2_hid.jpg')
        if(i == 3):
            plt.savefig('106072237_obj3_hid.jpg')
        if(i == 4):
            plt.savefig('106072237_obj4_hid.jpg')
        if(i == 5):
            plt.savefig('106072237_obj5_hid.jpg')
        if(i == 6):
            plt.savefig('106072237_obj6_hid.jpg')
        if(i == 7):
            plt.savefig('106072237_obj7_hid.jpg')
        if(i == 8):
            plt.savefig('106072237_obj8_hid.jpg')
    plt.show()
    
# ----------- the main body ----------------------
r0 = np.array([[1, 0, 0],
               [0, 1, 0],
               [0, 0, 1]])

r1 = np.array([[1, 0, 0],
               [0, 3, 0],
               [0, 0, 1]])
    
r2 = np.array([[1, 0, 0],
               [0, 3, 0],
               [0, 0, 2]])
    
r3 = np.array([[0.5, 0, 0],
               [0, 0.5, 0],
               [0, 0, 0.5]])
    
r4 = np.array([[4, 0, 0],
               [0, 0.3, 0],
               [0, 0, 3.3]])

r5 = np.array([[m.sqrt(3)/2, 1/2, 0],
                   [-1/2, m.sqrt(3)/2, 0],
                   [0, 0, 1]])
    
r6 = np.array([[2, 1, 0],
               [2, 3, 0],
               [0, 0, 3]])

r7 = np.array([[0, 0, 2],
               [0, 2, 2],
               [3, 0, 3]])

r8 = np.array([[3, 9, 9],
               [9, 3, 9],
               [9, 9, 3]])
    
r = np.array([r0, r1, r2, r3, r4, r5, r6, r7, r8])

for i in range(9):
    print('obj', i)
    flag = 0
    points = np.dot(r[i] , points)
    plotcube(points)
    points = np.dot(np.linalg.inv(r[i]) , points)
    
for i in range(9):
    print('obj', i, '_hid')
    flag = 1
    points = np.dot(r[i] , points)
    plotcube(points)
    points = np.dot(np.linalg.inv(r[i]) , points)

    


