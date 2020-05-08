#include <iostream>
#include <fstream>
using namespace std;

int matrixSize, **matrix, numberOfDetriot, **tmpMatrix;

void input();
void nextMatrix(int& m, int& n);
void output();
void print();
void fillIn(int m, int n);
int isValid(int r, int c, int data); // 해당 칸에 해당 숫자를 넣을려고 할 때, 유효한지
int isExist0(); // 다 채워졌는지 검사
int initValid();

void routine() {
	input();
	if (initValid()) fillIn(0, 0);
	output();
}

void input() {
	//ifstream in("detroit.inp");
	ifstream in("4.inp");
	in >> matrixSize;

	numberOfDetriot = 0;

	matrix = new int*[matrixSize];
	tmpMatrix = new int*[matrixSize];
	for (int i = 0; i < matrixSize; i++) {
		matrix[i] = new int[matrixSize];
		tmpMatrix[i] = new int[matrixSize];
		for (int j = 0; j < matrixSize; j++) {
			in >> matrix[i][j];
			tmpMatrix[i][j] = matrix[i][j];
		}
	}
}
void output() {
	ofstream out("detroit.out");
	out << numberOfDetriot << endl;
	cout << numberOfDetriot << endl;
}
void print() {
	for (int i = 0; i < matrixSize; i++) {
		for (int j = 0; j < matrixSize; j++) {
			cout << tmpMatrix[i][j] << " ";
		}
		cout << endl;
	}
	cout << numberOfDetriot << endl;
	cout << "=============================================" << endl;
}
void nextMatrix(int& m, int& n) {
	do {
		n++;
		if (n == matrixSize) {
			n = 0;
			m++;
		}
	} while (m<matrixSize && matrix[m][n] != 0);
}
void previousMatrix(int& m, int& n) {
	do {
		n--;
		if (n < 0) {
			m--;
			n = matrixSize - 1;
		}
	} while (m>=0 && matrix[m][n] != 0);
}
int isValid(int r, int c, int data) {
	int result = 0;
	for (int i = 0; i < matrixSize; i++) {
		if (tmpMatrix[i][c] == data) result++;
		if (tmpMatrix[r][i] == data) result++;
	}
	if (result == 0) return 1;
	else return 0;
}
int isExist0() {
	int exist = 0;
	for (int i = 0; i < matrixSize; i++) {
		for (int j = 0; j < matrixSize; j++) {
			if (tmpMatrix[i][j] == 0) exist++;
		}
	}
	if (exist == 0) return 1;
	else return 0;
}

int initValid() {
	for (int i = 0; i < matrixSize; i++) {
		for (int j = 0; j < matrixSize; j++) {
			if (i != j && matrix[i][i] != 0 && (matrix[i][j] == matrix[i][i] || (matrix[j][i] == matrix[i][i])))
				return 0;
		}
	}
	return 1;
}

void fillIn(int m, int n) {
	//while (matrix[m][n] != 0) {
	//	nextMatrix(m, n);
	//}
	if (m < matrixSize && matrix[m][n] != 0) nextMatrix(m, n);
	if (m >= matrixSize) return;

	for (int i = 1; i <= matrixSize; i++) {
		if (isValid(m, n, i)) {
			tmpMatrix[m][n] = i;
			nextMatrix(m, n);
			fillIn(m, n);
			if (m < matrixSize) {
				if (isExist0() && matrix[m][n] == 0 ) {
					numberOfDetriot++;
					print();
				}
				tmpMatrix[m][n] = matrix[m][n];
			}
			if (m < matrixSize - 1 && n < matrixSize - 1 && matrix[m][n] != 0) {
				nextMatrix(m, n);
				tmpMatrix[m][n] = matrix[m][n];
				previousMatrix(m, n);
			}
			previousMatrix(m, n);
		}
	}
}

int main() {
	routine();
}
