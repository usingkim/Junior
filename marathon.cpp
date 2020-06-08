#include <iostream>
#include <fstream>
#include <list>
#include <algorithm>
#define MAX 10000000
using namespace std;

typedef struct info {
	int start, end, weight;
}info;

int k;
bool visited[51];
list<info> v;
info t;

bool isSame(info &a);
bool comp(info &a, info &b);
int getParent(int parent[], int x);
void unionParent(int parent[], int a, int b);
bool findParent(int parent[], int a, int b);

int main() {
	int s, e, w;
	list<info>::iterator iter;

	ifstream in("marathon.inp");
	ofstream out("marathon.out");

	in >> k;

	for (int i = 1; i <= k; i++) {
		in >> s;
		for (int j = 1; j <= k; j++) {
			in >> e;
			if (e == 0) break;
			in >> w;
			t = { s, e, w };
			iter = find_if(v.begin(), v.end(), isSame);
			if (iter == v.end()) {
				v.push_back(t);
			}
		}
	}

	in.close();

	v.sort(comp);
	int parent[51];
	for (int i = 1; i <= k; i++) {
		parent[i] = i;
	}

	int min = MAX;
	for (iter = v.begin(); iter != v.end(); ++iter) {
		if (findParent(parent, iter->start, iter->end)) {
			// cycle이 발생하는 경우
			
		}
		unionParent(parent, iter->start, iter->end);
	}

	out << min;
	out.close();
}

bool isSame(info &a) {
	return (t.end == a.start && t.start == a.end);
}

bool comp(info &a, info &b) {
	return a.weight < b.weight;
}

int getParent(int parent[], int x) {
	if (parent[x] == x) return x;
	return parent[x] = getParent(parent, parent[x]);
}

void unionParent(int parent[], int a, int b) {
	a = getParent(parent, a);
	b = getParent(parent, b);
	if (a < b) parent[b] = a;
	else parent[a] = b;
}

bool findParent(int parent[], int a, int b) {
	a = getParent(parent, a);
	b = getParent(parent, b);
	return a == b;
}
