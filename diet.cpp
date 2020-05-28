#include <iostream>
#include <fstream>
#include <algorithm>
#include <stack>
using namespace std;

typedef struct food {
	int index, protein, fat, carbohydrate, vitamin, price;
}Food;

bool sorting(Food& a, Food& b) { // 가성비가 좋은 순으로 정렬
	float sum1 = float(a.protein + a.fat + a.carbohydrate + a.vitamin) / a.price;
	float sum2 = float(b.protein + b.fat + b.carbohydrate + b.vitamin) / b.price;

	return sum1 < sum2 ? true : false;
}

class diet {
	int numOfFood, minValue, minimum[30];
	Food atLeast, value[31];
	stack<Food> result;
public:
	diet();
	void out();
	int findMinCost(int index, int mp, int mf, int ms, int mv, int cost);
};

diet::diet() {
	ifstream in("diet.inp");

	in >> numOfFood;
	in >> atLeast.protein >> atLeast.fat >> atLeast.carbohydrate >> atLeast.vitamin;
	atLeast.price = atLeast.index = 0;

	for (int i = 1; i <= numOfFood; i++) {
		in >> value[i].protein >> value[i].fat >> value[i].carbohydrate >> value[i].vitamin >> value[i].price;
		value[i].index = i;
	}

	minValue = 20000;
	minimum[30] = { 0, };
	sort(value + 1, value + numOfFood + 1, sorting);

	in.close();
}
int diet::findMinCost(int index, int mp, int mf, int ms, int mv, int cost) {

	cost += value[index].price;

	if (cost > minValue) {
		return 20000;
	}

	result.push(value[index]);

	mp += value[index].protein;
	mf += value[index].fat;
	ms += value[index].carbohydrate;
	mv += value[index].vitamin;
	

	if (mp >= atLeast.protein && mf >= atLeast.fat && ms >= atLeast.carbohydrate && mv >= atLeast.vitamin) {
		if (cost == minValue) {
			int n = 0;
			for (int i = 0; i < numOfFood; i++) {
				if (minimum[i] == 0) break;
				n += (value[minimum[i]].protein + value[minimum[i]].fat + value[minimum[i]].carbohydrate + value[minimum[i]].vitamin);
			}
			if (n >= mp + mf + ms + mv) {
				result.pop();
				return 20000;
			}
		}

		stack<Food> tmp;
		int i = 0;
		while (!result.empty()) {
			minimum[i] = result.top().index;
			tmp.push(result.top());
			i++;
			result.pop();
		}
		if (i <= numOfFood) minimum[i] = 0;
		while (!tmp.empty()) {
			result.push(tmp.top());
			tmp.pop();
		}
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
		findMinCost(i, 0, 0, 0, 0, 0);
	}

	int save = 0;
	for (int i = 0; i < numOfFood; i++) {
		if (minimum[i] == 0) break;
		save = i;
	}
	sort(minimum, minimum + save + 1);

	for (int i = 0; i < numOfFood; i++) {
		if (minimum[i] == 0) break;
		if (i != numOfFood - 1) out << minimum[i] << " ";
	}
	out << endl;
}



int main() {
	diet d;
	d.out();
}
