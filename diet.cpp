#include <iostream>
#include <fstream>
#include <algorithm>
#include <stack>
using namespace std;

typedef struct food {
	int index, protein, fat, carbohydrate, vitamin, price;
}Food;

bool sorting(const Food& a, const Food& b) { // 가성비가 좋은 순으로 정렬
	float sum1 = float(a.protein + a.fat + a.carbohydrate + a.vitamin) / a.price;
	float sum2 = float(b.protein + b.fat + b.carbohydrate + b.vitamin) / b.price;

	return sum1 < sum2 ? true : false;
}

bool sortingI(const Food& a, const Food& b) { // index번호 기준
	return a.index < b.index;
}

class diet {
	int numOfFood, minValue;
	Food atLeast, value[31], minimum[31];
	stack<Food> result;
public:
	diet();
	void out();
	int findMinCost(int index, int mp, int mf, int ms, int mv, int cost, int count);
};

diet::diet() {
	//ifstream in("diet.inp");
	ifstream in("3.inp");

	in >> numOfFood;
	in >> atLeast.protein >> atLeast.fat >> atLeast.carbohydrate >> atLeast.vitamin;
	atLeast.price = atLeast.index = 0;

	for (int i = 1; i <= numOfFood; i++) {
		in >> value[i].protein >> value[i].fat >> value[i].carbohydrate >> value[i].vitamin >> value[i].price;
		value[i].index = i;
	}

	minValue = 20000;
	sort(value + 1, value + numOfFood + 1, sorting);

	in.close();
}
int diet::findMinCost(int index, int mp, int mf, int ms, int mv, int cost, int count) {

	cost += value[index].price;

	if (cost > minValue) return 20000;

	result.push(value[index]);

	mp += value[index].protein;
	mf += value[index].fat;
	ms += value[index].carbohydrate;
	mv += value[index].vitamin;
	count++;


	if (mp >= atLeast.protein && mf >= atLeast.fat && ms >= atLeast.carbohydrate && mv >= atLeast.vitamin) {
		stack<Food> tmp;
		Food tmpResult[31];
		int store = 0;

		for (int i = 1; i <= numOfFood; i++) {
			if (result.empty()) break;
			tmp.push(result.top());
			tmpResult[i] = result.top();
			result.pop();
			store = i;
		}
		while (!tmp.empty()) {
			result.push(tmp.top());
			tmp.pop();
		}

		if (store + 1 <= numOfFood) tmpResult[store + 1] = { 0,0,0,0,0,0 };
		
		if (cost == minValue) {
			int n = 0;
			for (int i = 1; i <= numOfFood; i++) {
				if (minimum[i].index == 0) break;
				n += (minimum[i].protein + minimum[i].fat + minimum[i].carbohydrate + minimum[i].vitamin);
			}

			if (n > mp + mf + ms + mv) {
				result.pop();
				return 20000;
			}
			else if (n == mp + mf + ms + mv) {
				// 만약에 이전 친구들이 index 번호가 사전순으로 더 앞이라면 return 해줘야함
				int idxTmp[31], s = 0;
				for (int i = 1; i <= numOfFood; i++) {
					idxTmp[i] = tmpResult[i].index;
					s = i;
					if (idxTmp[i] == 0) break;
				}

				sort(idxTmp + 1, idxTmp + s);

				for (int i = 1; i <= numOfFood; i++) {
					if (idxTmp[i] == 0 || minimum[i].index == 0) break;
					if (idxTmp[i] == minimum[i].index) continue;
					else if (idxTmp[i] > minimum[i].index) {
						result.pop();
						return 20000; 
					}
				}
			}
		}
		

		for (int idx = 1; idx <= store; idx++) {
			if (tmpResult[idx].index == 0) break;
			minimum[idx] = tmpResult[idx];
		}
		if (store + 1 <= numOfFood) minimum[store + 1] = { 0,0,0,0,0,0 };

		for (int i = 1; i <= store; i++) {
			cout << minimum[i].index << " ";
		}
		cout << endl;

		sort(minimum, minimum + store + 1, sortingI);

		minValue = cost;
		result.pop();
		return cost;
	}

	for (int i = index + 1; i <= numOfFood; i++) {
		minValue = min(minValue, findMinCost(i, mp, mf, ms, mv, cost));
	}

	result.pop();
	return minValue;
}

void diet::out() {
	ofstream out("diet.out");

	for (int i = 1; i <= numOfFood; i++) {
		int sum = 0;
		for (int j = i; j <= numOfFood; j++) {
			sum += value[j].vitamin;
		}
		if (sum < atLeast.vitamin) continue;
		
		findMinCost(i, 0, 0, 0, 0, 0, 0);
	}

	int save = 0;
	for (int i = 0; i < numOfFood; i++) {
		if (minimum[i].index == 0) break;
		save = i;
	}

	for (int i = 1; i <= numOfFood; i++) {
		if (minimum[i].index == 0) break;
		out << minimum[i].index << " ";
	}
	out << endl;
}



int main() {
	diet d;
	d.out();
}
