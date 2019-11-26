#include "function.h"
#include <iostream>

using namespace std;
ostream &operator<<(ostream &output, const Matrix &m){
    for(int i = 0; i < m.size; i++){
        for(int j = 0; j < m.size; j++){
            cout << m.matrix[i][j];
            if(j != m.size - 1)
                cout << " ";
        }
        cout << endl;
    }
    return output;
}
istream &operator>>(istream &input, Matrix &m){
    for(int i = 0; i < m.size; i++){
        for(int j = 0; j < m.size; j++){
            cin >> m.matrix[i][j];
        }
    }
    return input;
}
Matrix::Matrix(const Matrix &m){
    size = m.size;
    buf = new int[size*size];
    matrix = new int* [size];
    
    for(int i=0; i<size; i++)
        matrix[i] = &buf[i*size];
    
    for(int i=0; i<size; i++)
        for(int j=0; j<size; j++)
            matrix[i][j] = m.matrix[i][j];
}// copy constructor
Matrix &Matrix::clockwise90(){
    int m[52][52];
    
    
    for(int i = 0; i < size; i++){
        for(int j = 0; j < size; j++){
            m[i][j] = matrix[i][j];
        }
    }
    
    for(int i = 0; i < size; i++){
        for(int j = 0; j < size; j++){
            matrix[j][size-i-1] = m[i][j];
        }
    }
    
    return *this;
}
