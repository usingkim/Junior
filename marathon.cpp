#include <iostream>
#include <fstream>
#include <list>
#include <algorithm>
using namespace std;

typedef struct info {
	int start, end, weight;
}info;

int k;
list<info> v; // v의 정보
info t;

bool isSame(info &a) {
	if (t.end == a.end && t.start == a.start) return true;
	else return false;
}

bool comp(info &a, info &b) {
	return a.weight < b.weight;
}

int main() {
	int s, e, w;
	list<info>::iterator iter;

	ifstream in("marathon.inp");
	in >> k;

	for (int i = 1; i <= k; i++) {
		in >> s;
		for (int j = 1; j <= k; j++) {
			in >> e;
			if (e == 0) break;
			in >> w;
			t = { e, s, w };
			iter = find_if(v.begin(), v.end(), isSame);
			if (iter == v.end()) {
				t = { s, e, w };
				v.push_back(t);
			}
		}
	}

	in.close();

	v.sort(comp);

	ofstream out("marathon.out");

	for (iter = v.begin(); iter != v.end(); iter++) {
		out << iter->start << " " << iter->end << " " << iter->weight << endl;
	}

	out.close();
}
