#include <iostream>
#include <fstream>
#include <string>
#include <stack>
#include <algorithm>
using namespace std;

class money {
	char* op;
	int *num, ***table, m, n;
	int makeTable(int x, int y, int z);
public:
	money();
	void print();
};

money::money() {
	ifstream in("mgame.inp");

	string str;
	in >> str;

	int len = str.length();
	m = 0;
	n = 0;

	op = new char[len / 2];
	num = new int[len / 2 + 1];

	for (int i = 0; i < len; i++) {
		if (i % 2 == 0) {
			num[m++] = str[i] - '0';
		}
		else {
			op[n++] = str[i];
		}
	}

	table = new int**[n];
	for (int i = 0; i < n; i++) {
		table[i] = new int*[n];
		for (int j = 0; j < n; j++) {
			table[i][j] = new int[2];
			for (int z = 0; z < 2; z++) {
				table[i][j][z] = 0;
			}
		}
	}

}

int money::makeTable(int x, int y, int z) {
	if (table[x][y][z] != 0) return table[x][y][z];
	if (x == y) {
		switch (op[x]) {
		case '+':
			table[x][x][0] = table[x][x][1] = num[x] + num[x + 1];
			break;
		case '-':
			table[x][x][0] = table[x][x][1] = num[x] - num[x + 1];
			break;
		case '*':
			table[x][x][0] = table[x][x][1] = num[x] * num[x + 1];
			break;
		}
		return table[x][y][z];
	}

	stack<int> find;

	for (int i = x; i <= y; i++) {
		int operand[2][2], result; 

		if (i == x)	operand[0][0] = operand[0][1] = num[x];
		else if (i + 1 == y && i == x) {
			operand[0][0] = makeTable(i - 1, i - 1, 0);
			operand[0][1] = num[i - 1];
		}
		else {
			operand[0][0] = makeTable(x, i - 1, 0);
			operand[0][1] = table[x][i - 1][1];
		}

		if (i == y) operand[1][0] = operand[1][1] =  num[i + 1];
		else if (i == y && i - 1 == x) {
			operand[1][0] = num[i + 2];
			operand[1][1] = makeTable(y, y, 0);
		}
		else {
			operand[1][0] = makeTable(i + 1, y, 0);
			operand[1][1] = table[i + 1][y][1];
		}

		switch (op[i]) {
		case '+':
			result = operand[0][0] + operand[1][0];
			find.push(result);
			result = operand[0][1] + operand[1][1];
			find.push(result);
			break;
		case '-':
			result = operand[0][0] - operand[1][1];
			find.push(result);
			result = operand[0][1] - operand[1][0];
			find.push(result);
			break;
		case '*':
			result = operand[0][0] * operand[1][0];
			find.push(result);
			result = operand[0][1] * operand[1][1];
			find.push(result);
			break;
		}
	}

	table[x][y][0] = table[x][y][1] = find.top();
	find.pop();

	while (!find.empty()) {
		int top = find.top();
		table[x][y][0] = table[x][y][0] < top ? top : table[x][y][0];
		table[x][y][1] = table[x][y][1] > top ? top : table[x][y][1];
		find.pop();
	}

	return table[x][y][z];
}


void money::print() {
	ofstream out("mgame.out");
	out << makeTable(0, n - 1, 0) << endl;
}

int main() {
	money m;

	m.print();
}