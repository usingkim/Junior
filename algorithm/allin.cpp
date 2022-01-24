#include <iostream>
#include<fstream>
using namespace std;

class allin {
	int buy, sell, *P, num;
	int findSell(int i, int j);
	int findBuy(int i, int j);
public:
	allin() {
		ifstream in("3.inp");
		in >> num;
		P = new int[num];
		for (int i = 0; i < num; i++)
			in >> P[i];
	}
	void routine();
};

int allin::findSell(int i, int j) {
	if (i >= j) {
		sell = j;
		return j;
	}
	sell = findSell(i + 1, j);

	if (P[i] > P[sell]) {
		sell = i;
	}
	else if (P[i] == P[sell]) {
		int x, y;
		x = findBuy(0, i - 1);
		y = findBuy(0, sell - 1);

		if (P[x] <= P[y])  sell = i;
	}
	return sell;

}

int allin::findBuy(int i, int j) {
	if (i == j) return i;
	buy = findBuy(i + 1, j);
	if (P[i] < P[buy]) { buy = i; }
	return buy;
}

void allin::routine() {
	int x, y, z, w;
	x = findSell(0, num - 1);
	y = findBuy(0, x - 1);

	if (x < num - 1) {
		z = findBuy(x, num - 1);
		w = findSell(z + 1, num - 1);

		if (P[w] - P[z] >= P[x] - P[y]) {
			if (z == y && P[w] == P[x]) x < w ? x : w;
			else {
				x = w;
				y = z;
			}
		}
	}

	if (y > 0) {
		z = findBuy(0, y - 1);
		w = findSell(y, num - 1);

		if (P[w] - P[z] > P[x] - P[y]) {
			x = w;
			y = z;
		}
	}

	ofstream out("allin.out");
	out << y + 1 << " " << x + 1 << endl;
}

int main() {
	allin k;
	k.routine();
}