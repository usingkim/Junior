#include <iostream>
#include <fstream>
#include <list>
#include <algorithm>
#define MAX 10000000
using namespace std;

class marathon {
	typedef struct info {
		int start, end, weight;
	}info;

<<<<<<< HEAD
	int k, minimum;
	bool visited[51];
	list<info> v, r;
	info t;

	void initVisited();
	bool isSame(info &a);
	bool comp(info &a, info &b);
	int getParent(int parent[], int x);
	void unionParent(int parent[], int a, int b);
	bool findParent(int parent[], int a, int b);
	void getPath(int s, int e, int value);

public:
	marathon();
	void routine();
};

int main() {
	marathon m;
	m.routine();
}

void marathon::routine() {
	int parent[51], min = MAX;
	list<info>::iterator iter;

	for (int i = 1; i <= k; i++) {
		parent[i] = i;
	}

	ofstream out("marathon.out");
	for (iter = v.begin(); iter != v.end(); ++iter) {
		if (findParent(parent, iter->start, iter->end)) {
			// cycle이 발생하는 경우
			initVisited();
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
=======
int k;
bool visited[51];
list<info> v;
info t;

bool isSame(info &a);
bool comp(info &a, info &b);
int getParent(int parent[], int x);
void unionParent(int parent[], int a, int b);
bool findParent(int parent[], int a, int b);
>>>>>>> f11702ff648136d0d2795f24d52cc8e20c61947a

marathon::marathon() {
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
<<<<<<< HEAD
			if (iter == v.end()) v.push_back(t);
=======
			if (iter == v.end()) {
				v.push_back(t);
			}
>>>>>>> f11702ff648136d0d2795f24d52cc8e20c61947a
		}
	}

	in.close();

	v.sort(comp);
<<<<<<< HEAD
}

bool marathon::isSame(info &a) {
	return (t.end == a.start && t.start == a.end);
}

bool marathon::comp(info &a, info &b) {
	return a.weight < b.weight;
}

int marathon::getParent(int parent[], int x) {
	if (parent[x] == x) return x;
	return parent[x] = getParent(parent, parent[x]);
}

void marathon::unionParent(int parent[], int a, int b) {
	a = getParent(parent, a);
	b = getParent(parent, b);
	if (a < b) parent[b] = a;
	else parent[a] = b;
}

bool marathon::findParent(int parent[], int a, int b) {
	a = getParent(parent, a);
	b = getParent(parent, b);
	return a == b;
}

void marathon::getPath(int s, int e, int value) {
	if (value > minimum) return;
	if (s == e) {
		minimum = min(minimum, value);
	}

	list<info>::iterator iter;
	visited[s] = true;

	for (iter = r.begin(); iter != r.end(); ++iter) {
		if (s == iter->start && visited[iter->end] == false)
			getPath(iter->end, e, value + iter->weight);
		if (s == iter->end && visited[iter->start] == false)
			getPath(iter->start, e, value + iter->weight);
	}

	visited[s] = false;
}

void marathon::initVisited() {
	for (int i = 1; i <= k; i++) {
		visited[i] = 0;
	}
=======
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
>>>>>>> f11702ff648136d0d2795f24d52cc8e20c61947a
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
