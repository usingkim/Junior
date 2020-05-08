#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
using namespace std;

int matrixSize, **matrix, numberOfDetriot, **tmpMatrix, *filledRow, nowIndex;
vector<int> order; // 토핑의 수가 큰 애 부터 정렬

void input();
void output();

void nextMatrix(int& m, int& n);
void previousMatrix(int& m, int& n);

void fillIn(int m, int n); // tmpMatrix 채워넣는 함수

int isValid(int r, int c, int data); 
// 해당 칸에 해당 숫자를 넣을려고 할 때, 유효한지 (가로세로로 겹치는 숫자가 없는지 판별)
int isExist0(); // 다 채워졌는지 검사
int initValid(); // fillIn함수 호출 이전에 입력 받은거 유효한거 없는지 검사
void toFillOrder(); // vector order 정렬

int main() {
	input();
	if (isExist0()) {
		numberOfDetriot = 1;
		output();
		return 0;
	}
	toFillOrder();
	nowIndex = 0;
	if (initValid()) fillIn(order[0], 0);
	output();
}

void toFillOrder() {
	for (int i = 0; i < matrixSize; i++) {
		if (order.empty()) {
			order.push_back(i);
			continue;
		}

		int cases = 0;

		vector<int>::iterator iter;
		for (iter = order.begin(); iter != order.end(); ++iter) {
			if (filledRow[*iter] < filledRow[i]) {
				iter = order.insert(iter, i);
				cases = 1;
				break;
			}
		}
		if (!cases) order.push_back(i);
	}

	delete(filledRow);
}
void input() {
	ifstream in("detroit.inp");

	in >> matrixSize;

	numberOfDetriot = 0;
	filledRow = new int[matrixSize];

	matrix = new int*[matrixSize];
	tmpMatrix = new int*[matrixSize];
	for (int i = 0; i < matrixSize; i++) {
		matrix[i] = new int[matrixSize];
		tmpMatrix[i] = new int[matrixSize];
		filledRow[i] = 0;
		for (int j = 0; j < matrixSize; j++) {
			in >> matrix[i][j];
			tmpMatrix[i][j] = matrix[i][j];
			if (matrix[i][j] != 0) filledRow[i]++;
		}
	}
}
void output() {
	ofstream out("detroit.out");
	out << numberOfDetriot << endl;
	delete(matrix);
	delete(tmpMatrix);
}
void nextMatrix(int& m, int& n) {
	do {
		n++;
		if (n == matrixSize) {
			n = 0;
			if (nowIndex == matrixSize - 1) {
				m = matrixSize;
				return;
			}
			m = order[++nowIndex];
		}
	} while (m < matrixSize && matrix[m][n] != 0);
}
void previousMatrix(int& m, int& n) {
	do {
		n--;
		if (n < 0) {
			n = matrixSize - 1;
			if (nowIndex == 0) {
				m = -1;
				return;
			}
			m = order[--nowIndex];
		}
	} while (m >= 0 && matrix[m][n] != 0);
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

	if (m < matrixSize && matrix[m][n] != 0) nextMatrix(m, n);
	if (m >= matrixSize) return;

	for (int i = 1; i <= matrixSize; i++) {
		if (isValid(m, n, i)) {
			tmpMatrix[m][n] = i;
			nextMatrix(m, n);
			if (m == matrixSize) return;
			fillIn(m, n);
			if (m < matrixSize) {
				if (isExist0() && matrix[m][n] == 0) {
					numberOfDetriot++;
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
