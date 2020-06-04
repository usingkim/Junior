#include <iostream>
#include <fstream>
#include <algorithm>
#include <queue>
#include <list>
using namespace std;

#define MAX 100000000

typedef struct data {
	int b[6]; // bucket의 최대 개수 6개
}Data;

typedef struct Q {
	Data data;
	int count;
}Q;

//최대 물통의 용량 c, start : 시작, goal : 목표
Data c, start, goal;
int k; // 물통 개수 3 <=k <= 6
int minCount = MAX;
list<Q> l;

void inp() {
	ifstream in("bucket.inp");
	//ifstream in("2.inp");

	in >> k;

	for (int i = 0; i < k; i++) {
		in >> c.b[i];
	}

	for (int i = 0; i < k; i++) {
		in >> start.b[i];
	}

	for (int i = 0; i < k; i++) {
		in >> goal.b[i];
	}

	in.close();
}

bool isPossible(Data& tmp, int i, int j) {
	// i번째 친구가 j번째 친구한테 줄 수 있는지 판별

	if (goal.b[i] == tmp.b[i]) return false;
	if (goal.b[j] == tmp.b[j]) return false;

	if (!l.empty()) {
		list<Q>::iterator it;
		for (it = l.begin(); it != l.end(); it++) {
			int save = 0;
			for (int s = 0; s < k; s++) {
				if ((*it).data.b[s] == tmp.b[s]) save++;
			}
			if (save == k) return false;
		}
	}

	if (c.b[j] - tmp.b[j] >= tmp.b[i]) {
		tmp.b[j] += tmp.b[i];
		tmp.b[i] = 0;
		return true;
	}
	else {
		tmp.b[i] -= c.b[j] - tmp.b[j];
		tmp.b[j] += c.b[j] - tmp.b[j];
		return true;
	}
}

bool isValid(Q tmp) {
	int save = 0;
	for (int i = 0; i < k; i++) {
		if (tmp.data.b[i] == goal.b[i]) save++;
		if (save != i + 1) return false;
	}
	return save == k;
}

void bfs() {
	queue<Q> d;
	d.push({ start, 0 });
	int call = 0;
	while (!d.empty()) {
		call++;
		if (call > 1000) break; // 적당한 break 조건이 필요하다. how to?
		Q tmp = d.front();
		d.pop();

		for (int i = 0; i < k; i++) {
			// i번째 친구를 j번째 친구한테 줌
			for (int j = 0; j < k; j++) {
				if (i == j) continue;
				Q tmp_ = tmp;
				if (isPossible(tmp_.data, i, j)) {
					tmp_.count++;
					if (isValid(tmp_)) {
						l.push_back(tmp_);
						if (minCount > tmp.count) minCount = tmp_.count;
					}
					else d.push(tmp_);
				}
			}
		}
	}
}

void out() {
	inp();
	ofstream out("bucket.out");
	bfs();
	if (minCount == MAX) minCount = 0;
	out << minCount << endl;
	out.close();
}

int main() {
	out();
}
