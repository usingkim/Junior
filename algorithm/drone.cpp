#include <iostream>
#include <fstream>
#include <cstdlib>
#include <stack>
#include <queue>
#include <algorithm>
using namespace std;

typedef struct info {
	int h, w, x, y;
}info;

//ifstream in("drone.inp");
ifstream in("1.inp");
ofstream out("drone.out");

class drone {
	info *d, *arr;
	int n, min;

	stack<int> len;

	void sort();
	int getL();

	int isValid(info &o);
	void findEnerge(int t);
	int bound();
	int calculate();
public:
	drone();
	void print();
};

drone::drone() {

	in >> n;
	d = new info[n];

	arr = new info[n];

	for (int i = 0; i < n; i++) {
		in >> d[i].h >> d[i].w >> d[i].x >> d[i].y;
		arr[i].h = arr[i].w = arr[i].x = arr[i].y = 0;
	}
	in.close();
}

void drone::sort() {

	for (int i = 1; i < n; i++) {
		if (d[i].h == 1) {
			info tmp = d[i];
			d[i] = d[0];
			d[0] = tmp;
			break;
		}
	}

	for (int i = n - 1; i > 1; i--) {
		for (int j = 1; j < i; j++) {
			if (d[i].w > d[j].w) {
				info tmp = d[i];
				d[i] = d[j];
				d[j] = tmp;
			}
		}
	}
}

int drone::getL() {
	sort();

	len.push(d[0].w);
	for (int i = n - 1; i > 0; i--) {
		len.push(len.top() + d[i].w);
	}
	int sum = 0;
	for (int i = 1; i < n; i++) {
		sum += (abs(d[i].x - d[i - 1].x) + abs(d[i].y - d[i - 1].y))*(len.top() + 1);
		len.pop();
	}
	return sum;
}
void drone::print() {
	min = getL();

	arr[0] = d[0];
	findEnerge(1);

	out << min << endl;
	out.close();
}

int drone::isValid(info &o) {
	for (int i = 0; i < n; i++) {
		if (arr[i].h == 0) break;
		if (arr[i].h == o.h) return 0;
	}
	return 1;
}
int drone::bound() { // bound() 해야하면 1 아니면 0
	int c = calculate();
	if (c >= min) return 1;

	int result, xx = arr[0].x, yy = arr[0].y, s = 0;

	for (int i = 0; i < n; i++) {
		if (arr[i].h == 0) break;
		xx = arr[i].x;
		yy = arr[i].y;
		s += arr[i].w;
	}

	for (int i = n-1; i >0; i--) {
		if (isValid(d[i])) {
			result = (abs(d[i].x - xx) + abs(d[i].y - yy)) * (s + 1);
			if (n >= 10) {
				int result2 = abs(d[i].x - arr[0].x) + abs(d[i].y - arr[0].y);
				if (c + result + result2 < min) return 0;
			}
			if (c + result < min) return 0;
		}
	}

	return 0;
}
int drone::calculate() {

	len.push(arr[0].w);
	for (int i = n - 1; i > 0; i--) {
		len.push(len.top() + arr[i].w);
	}

	int sum = 0;
	for (int i = 1; i <= n; i++) {
		if (i != n && arr[i].h == 0) break;

		int tmp;
		if (i == n) tmp = 0;
		else tmp = i;

		sum += (abs(arr[tmp].x - arr[i - 1].x) + abs(arr[tmp].y - arr[i - 1].y)) * (len.top() + 1);
		len.pop();
	}
	return sum;
}
void drone::findEnerge(int t) {
	if (t >= n) return;
	for (int i = 0; i < n; i++) {
		if (isValid(d[i])) {
			arr[t] = d[i];

			if (n<=6 || !bound()) {
				findEnerge(t + 1);
			}
			else {
				arr[t] = { 0,0,0,0 };
				continue;
			}

			if (t == n - 1) {
				int tmp = calculate();
				if (tmp < min) min = tmp;
			}

			arr[t] = { 0,0,0,0 };
		}
	}
}

int main() {
	drone d;
	d.print();
}

