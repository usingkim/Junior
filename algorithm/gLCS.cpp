#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <stack>
using namespace std;

string s1, s2, result;
int **t, maximum = 0;
vector<int> point;
string words = "";

void inp();
int max(int a, int b, int c, int d);
int table(int i, int j);
void findString(int i, int j);
void print();

void inp() {
	ifstream in("9.inp");

	in >> s1;
	in >> s2;

	t = new int*[s1.size()];
	for (int i = 0; i < s1.size(); i++) {
		t[i] = new int[s2.size()];
		for (int j = 0; j < s2.size(); j++)
			t[i][j] = -1;
	}
}

int max(int a, int b, int c, int d) {
	int k = a > b ? a : b;
	k = k > c ? k : c;
	return k > d ? k : d;
}

int table(int i, int j) {
	if (t[i][j] != -1) return t[i][j];

	if (i == 0 || j == 0) {
		if (s1[i] == s2[j]) {
			t[i][j] = 1;
		}
		else t[i][j] = 0;
		return t[i][j];
	}

	int a, b, c, d;

	if (i >= 1 && j >= 2) a = table(i - 1, j - 2);
	else a = 0;

	if (i >= 1 && j >= 1) b = table(i - 1, j - 1);
	else b = 0;

	if (i >= 2 && j >= 1) c = table(i - 2, j - 1);
	else c = 0;

	if (i >= 2 && j >= 2) d = table(i - 2, j - 2);
	else d = 0;

	t[i][j] = max(a, b, c, d) + 1;

	if (s1[i] != s2[j]) {
		t[i][j] = 0;
		return t[i][j];
	}

	if (t[i][j] > maximum) {
		maximum = t[i][j];
		point.erase(point.begin(), point.end());
		point.push_back(i);
		point.push_back(j);
	}
	else if (t[i][j] == maximum) {
		point.push_back(i);
		point.push_back(j);
	}

	return t[i][j];
}

void findString(int i, int j) {

	stack<int> st;

	while (t[i][j] != 0)
	{
		st.push(i);

		if (i == 0 || j == 0) break;

		if (t[i][j] - 1 == t[i - 1][j - 1]) {
			if (i >= 2 && j >= 2 && t[i - 1][j - 1] == t[i - 2][j - 2]) {
				if (s1[i - 1] > s1[i - 2]) {
					i = i - 2;
					j = j - 2;
				}
				else {
					i = i - 1;
					j = j - 1;
				}
			}
			else {
				i--; j--;
			}
		}

		else if (i >= 2 && t[i][j] - 1 == t[i - 2][j - 1]) {
			if (t[i - 2][j - 1] == t[i - 1][j - 2]) {
				if (s1[i - 2] > s1[i - 1]) {
					i--;
					j = j - 2;
				}
				else {
					i = i - 2;
					j--;
				}
			}
			else {
				i = i - 2;
				j--;
			}
		}

		else if (j >= 2 && t[i][j] - 1 == t[i - 1][j - 2])
		{
			i--;
			j = j - 2;
		}

		else if (i >= 2 && j >= 2 && t[i - 2][j - 2] == t[i][j] - 1)
		{
			i = i - 2;
			j = j - 2;
		}

	}

	string tmp = "";

	while (!st.empty())
	{
		tmp += s1[st.top()];
		st.pop();
	}

	if (words > tmp || words.size() < tmp.size()) 
		words = tmp;
}

void print() {
	vector<int>::iterator it;
	for (it = point.begin(); it < point.end(); it += 2) {
		findString(*it, *(it + 1));
	}

	ofstream out("gLCS.out");
	out << words;
}

int main() {
	inp();

	for (int i = s1.size() - 1; i >= 0; i--)
		table(i, s2.size() - 1);

	for (int i = s2.size() - 1; i >= 0; i--)
		table(s1.size() - 1, i);

	print();
}
