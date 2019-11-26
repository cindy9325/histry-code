#include <iostream>
#include "function.h"

std::ostream &operator<<(std::ostream &output, const Matrix &m){
    for(int i = 0; i < m.size; i++){
        for(int j = 0; j < m.size; j++){
            output << m.matrix[i][j];
            if(j != m.size - 1)
                output << " ";
        }
        output << std::endl;
    }
    return output;
}
std::istream &operator>>(std::istream &input, Matrix &m){
    for(int i = 0; i < m.size; i++){
        for(int j = 0; j < m.size; j++)
            input >> m.matrix[i][j];
    }
    return input;
}
Matrix::Matrix(int s): size(s){
    buf = new int[size * size];
    matrix = new int*[size];
    
    for(int i = 0; i < size; i++)
        matrix[i] = &buf[i * size];
    for(int i = 0; i < size; i++){
        for(int j = 0; j < size; j++)
            matrix[i][j] = 0;
    }
}

Matrix::Matrix(const Matrix &m){
    buf = new int[size * size];
    matrix = new int*[size];
    
    for(int i = 0; i < size; i++)
        matrix[i] = &buf[i * size];
    for(int i = 0; i < size; i++){
        for(int j = 0; j < size; j++)
            matrix[i][j] = m.matrix[i][j];
    }
}// copy constructor

Matrix::~Matrix(){
    delete [] matrix;
    delete [] buf;
}

Matrix &Matrix::operator=(const Matrix &a){
    if(a.size != size){
        delete [] matrix;
        delete [] buf;
        
        size = a.size;
        buf = new int[size * size];
        matrix = new int*[size];
        
        for(int i = 0; i < size; i++)
            matrix[i] = &buf[i * size];
    }
    
    for(int i = 0; i < size; i++){
        for(int j = 0; j < size; j++)
            matrix[i][j] = a.matrix[i][j];
    }
    return *this;
}

Matrix &Matrix::clockwise90(){
    int tmp[52][52];
    
    for(int i = 0; i < size; i++){
        for(int j = 0; j < size; j++)
            tmp[i][j] = matrix[i][j];
    }
    
    for(int i = 0; i < size; i++){
        for(int j = 0; j < size; j++)
            matrix[i][j] = tmp[j][size - i - 1];
    }
    return *this;
}
