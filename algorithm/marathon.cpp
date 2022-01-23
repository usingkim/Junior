#include <iostream>
#include <fstream>
#include <list>
#include <algorithm>
#define MAX 10000000
using namespace std;

typedef struct info {
	int start, end, weight;
}info;

int k, minimum;
bool visited[51];
list<info> v, r;
info t;

bool isSame(info &a);
bool comp(info &a, info &b);
int getParent(int parent[], int x);
void unionParent(int parent[], int a, int b);
void getPath(int s, int e, int value);
void routine();

int main() {
	routine();
}

void routine() {
	int s, e, w, parent[51], min = MAX;
	list<info>::iterator iter;

	ifstream in("marathon.inp");
	in >> k;

	for (int i = 1; i <= k; i++) {
		in >> s;
		for (int j = 1; j <= k; j++) {
			in >> e;
			if (e == 0) break;
			in >> w;
			t = { s, e, w };
			iter = find_if(v.begin(), v.end(), isSame);
			if (iter == v.end()) v.push_back(t);
		}
		parent[i] = i;
		visited[i] = false;
	}

	in.close();

	v.sort(comp);

	ofstream out("marathon.out");
	for (iter = v.begin(); iter != v.end(); ++iter) {
		if (getParent(parent, iter->start) == getParent(parent, iter->end)) {
			minimum = MAX;
			getPath(iter->start, iter->end, 0);
			min = min < minimum + iter->weight ? min : minimum + iter->weight;
		}
		unionParent(parent, iter->start, iter->end);
		r.push_back({ iter->start, iter->end, iter->weight });
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

void getPath(int s, int e, int value) {
	if (s == e) {
		minimum = min(minimum, value);
		return;
	}

	list<info>::iterator iter;
	visited[s] = true;

	for (iter = r.begin(); iter != r.end(); ++iter) {
		if (value + iter->weight < minimum) {
			if (s == iter->start && visited[iter->end] == false)
				getPath(iter->end, e, value + iter->weight);
			if (s == iter->end && visited[iter->start] == false)
				getPath(iter->start, e, value + iter->weight);
		}
	}

	visited[s] = false;
}
