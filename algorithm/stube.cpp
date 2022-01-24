#include <iostream>
using namespace std;

class stube {
	int A[3], B[3], C[3], D[3], save;
	double X[3], Y[2][3], result;
public:
	stube();
	void onX(double t, double* s);
	void onY(double t, double* s);
	double disXtoY(double t);
	double disYtoX(double t);
	void findMinXtoY(double s, double f);
	void findMinYtoX(double s, double f);
	void routine();
};

 stube::stube() {
	cin >> A[0] >> A[1] >> A[2];
	cin >> B[0] >> B[1] >> B[2];
	cin >> C[0] >> C[1] >> C[2];
	cin >> D[0] >> D[1] >> D[2];

	for (int i = 0; i < 3; i++) {
		X[i] = (A[i] + B[i]) / 2;
	}
	result = 1000000;
	save = -1;
}

void stube::onX(double t, double* s) {
	for (int i = 0; i < 3; i++) {
		s[i] = t * B[i] + (1 - t)*A[i];
	}
}

void stube::onY(double t, double* s) {
	for (int i = 0; i < 3; i++) {
		s[i] = t * D[i] + (1 - t)*C[i];
	}
}

double stube::disXtoY(double t) {
	double s[3], sum = 0;
	onY(t, s);

	for (int i = 0; i < 3; i++) {
		sum += sqrt((X[i] - s[i])*(X[i] - s[i]));
	}

	return sum;
}

double stube::disYtoX(double t) {
	double s[3], sum = 0;
	onX(t, s);

	for (int i = 0; i < 3; i++) {
		sum += sqrt((X[i] - s[i])*(X[i] - s[i]));
	}

	return sum;
}

void stube::findMinXtoY(double s, double f) {
	if (f - s < 0.00001) return;

	double p, q, mid = (s + f) / 2;

	p = disXtoY(s);
	q = disXtoY(f);

	if (p < q) {
		if (p < result) {
			result = p;
			save = s;
		}
		findMinXtoY(s, mid);
	}
	else if (p == q) {
		result = disXtoY(mid);
		save = mid;
	}
	else {
		if (q < result) {
			result = q; save = f;
		}
		findMinXtoY(mid, f);
	}

	onY(save, X);

	/*int count = 0;

	for (int i = 0; i < 3; i++)
		if (Y[0][i] == X[i])
			count++;

	if (count == 3) return;

	for (int i = 0; i < 3; i++) {
		Y[0][i] = X[i];
		cout << X[i] << " ";

	}
	cout << endl;*/

	cout << result << endl;

	if (s == 0 && f == 1) {
		findMinYtoX(0, 1);
	}
}

void stube::findMinYtoX(double s, double f) {
	if (f - s < 0.00001) return;

	double p, q, mid = (s + f) / 2;

	p = disYtoX(s);
	q = disYtoX(f);

	if (p < q) {
		if (p < result) {
			result = p;
			save = s;
		}
		findMinYtoX(s, mid);
	}
	else if (p == q) {
		result = disYtoX(mid);
		save = mid;
	}
	else {
		if (q < result) {
			result = q;
			save = f;
		}
		findMinYtoX(mid, f);
	}

	onX(save, X);


	/*int count = 0;

	for (int i = 0; i < 3; i++)
		if (Y[1][i] == X[i])
			count++;

	if (count == 3) return;

	for (int i = 0; i < 3; i++) {
		Y[1][i] = X[i];
		cout << X[i] << " ";
	}

	cout << endl;*/

	cout << result << endl;

	if (s == 0 && f == 1) {
		findMinYtoX(0, 1);
	}
}

void stube::routine() {
	findMinXtoY(0, 1);
	cout << result << endl;
}

int main() {
	stube s;

	s.routine();
}

//350 150 350 0 0 0 10 -6 30 56 21 120