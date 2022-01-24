#include <iostream>
using namespace std;
#include <math.h>
#include <fstream>
#include <string>
#include <cstring>

class Station {
	int T[3][3];
	double result;
	void online(double t, double s[3]);
	double distance(double t);
	void minimum(double s, double f);
public:
	Station();
	void get_Min();
};

Station::Station() {
	
	result = 1000000;

	ifstream ifile;
	int count = 0;
	char line[100]; // 한 줄씩 읽어서 임시로 저장할 공간

	ifile.open("station.inp");  // 파일 열기

	if (ifile.is_open())
	{
		while (ifile.getline(line, sizeof(line))) // 한 줄씩 읽어 처리를 시작한다.
		{	
			char *ptr = strtok(line, " ");      // " " 공백 문자를 기준으로 문자열을 자름, 포인터 반환

			while (ptr != NULL)               // 자른 문자열이 나오지 않을 때까지 반복
			{
				T[count / 3][count % 3] = atoi(ptr);
				ptr = strtok(NULL, " ");      // 다음 문자열을 잘라서 포인터를 반환
				count++;
			}
			
		}
	}

	ifile.close(); // 파일 닫기

}

void Station::online(double t, double s[3]) {
	//A, B 직선 위에 위치한 점 s의 좌표 리턴해주는 함수

	// s(t) = t*B+(1-t)*A

	for (int i = 0; i < 3; i++) {
		s[i] = t * T[1][i] + (1 - t)*T[0][i];

	}

}

double Station::distance(double t) {
	//|P-S(t)| 리턴 해주는 함수

	double s[3];
	online(t, s);
	double k = 0;

	for (int i = 0; i < 3; i++) {
		k = k + (T[2][i] - s[i])*(T[2][i] - s[i]);

	}

	return sqrt(k);
}

void Station::minimum(double s, double f) {
	if (s >= f || f - s < 0.0001)
		return;

	double mid = (s + f) / 2;
	double dis[3];

	dis[0] = distance(s);
	dis[1] = distance(mid);
	dis[2] = distance(f);

	if (dis[0] < dis[2]) {
		if (dis[0] < result)
			result = dis[0];
		minimum(s, mid);
	}
	else if (dis[0] == dis[2]) {
		result = dis[1];
	}
	else {
		if (dis[2] < result)
			result = dis[2];
		minimum(mid, f);
	}


}

void Station::get_Min() {
	minimum(0, 1);

	ofstream ou;
	ou.open("station.out");

	ou << ceil(result);

	ou.close();
}

int main() {
	Station e;
	e.get_Min();
	//cout << e.get_Min() << endl;
}
