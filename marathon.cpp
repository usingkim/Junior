#include <iostream>
#include <fstream>
using namespace std;

#define INF 1000000;

int k, v[51][51];

int main() {
	ifstream in("marathon.inp");
	ofstream out("marathon.out");
	int s, e;
	

	in >> k;
	for (int i = 1; i <= k; i++) {
		in >> s;
		for (int j = 1; j <= k; j++) {
			if (i == j) v[i][j] = 0;
			else v[i][j] = INF;
		}
		for (int j = 1; j <= k; j++) {
			in >> e;
			if (e == 0) break;
			in >> v[s][e];
			v[e][s] = v[s][e];
		}
	}

	in.close();

	for (int i = 1; i <= k; i++) {
		for (int j = 1; j <= k; j++) {
			out << v[i][j] << " ";
		}
		out << endl;
	}

	out.close();
}
