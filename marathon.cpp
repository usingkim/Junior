#include <iostream>
#include <fstream>
#include <list>
#include <algorithm>
using namespace std;

typedef struct info {
	int start, end, weight;
}info;

int k, sum;
bool visited[51];
list<info> v; // v의 정보
info t;

bool isSame(info &a);
bool comp(info &a, info &b);
int getParent(int parent[], int x);
void unionParent(int parent[], int a, int b);
int findParent(int parent[], int a, int b);
int getPath(int s, int e) {
	//s 로 시작하는 점을 찾는다.
	if (s == e) return 0;
	list<info>::iterator iter;
	int i;
	visited[s] = true;
	for (iter = v.begin(), i = 0; iter != v.end() && i <= sum; ++iter, i++) {
		if (s == iter->start && visited[iter->end] == false) {
			int tmp = getPath(iter->end, e);
			if (tmp != -1) return tmp + iter->weight;
		}
		else if (s == iter->end && visited[iter->start] == false) {
			int tmp = getPath(iter->start, e);
			if (tmp != -1) return tmp + iter->weight;
		}
	}
	visited[s] = false;
	return -1;
}
void initVisited() {
	for (int i = 1; i <= k; i++) {
		visited[i] = 0;
	}
}

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

	sum = 0;
	int min = 10000000;
	for (iter = v.begin(); iter != v.end(); ++iter) {
		if (findParent(parent, iter->start, iter->end)) {
			initVisited();
			int result = getPath(iter->start, iter->end) + iter->weight;
			if (result < min) min = result;
		}
		unionParent(parent, iter->start, iter->end);
		sum++;
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

int findParent(int parent[], int a, int b) {
	a = getParent(parent, a);
	b = getParent(parent, b);
	if (a == b) return 1;
	return 0;
}
