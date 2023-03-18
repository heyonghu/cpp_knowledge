#include "vector"
#include "stdio.h"

using namespace std;

int main() {
    vector<vector<int>> mp(1010, vector<int>(1010, 0));
    vector<vector<int>> v1(1010, vector<int>(1010, 0));
    int n, a, b;
    scanf("%d%d%d", &n, &a, &b);
    int x, y;
    int x_max = 0;
    int y_max = 0;
    for (int i = 0; i < n; i++) {
        scanf("%d%d", &x, &y);
        mp[x][y] = 1;
        x_max = max(x_max, x);
        y_max = max(y_max, y);
    }
    int result = 0;
    for (int i = a; i <= x_max; i++) {
        for (int j = b; j <= y_max; j++) {
            if (mp[i][j] == 1) {
                v1[i][j] = v1[i - 1][j] + v1[i][j - 1] + v1[i][j] + 1;
            }
        }
    }
    for (int i = a; i <= x_max; i++) {
        for (int j = b; j <= y_max; j++) {
            printf("%d ", v1[i][j]);
        }
        printf("\n");
    }
    for (int i = a; i <= x_max; i++) {
        for (int j = b; j <= y_max; j++) {
            int temp = v1[i][j] - v1[i - a][j] - v1[i][j - b] - v1[i - a][j - b];
            int x1 = 0;
            int y1 = 0;
            for (int k = i - a; k <= i; k++) {
                x1++;
            }
            for (int k = j - b + 1; k <= j; k++) {
                y1++;
            }
            temp = temp +x1 + y1;
            result = max(result, temp);
        }
    }
    ::printf("%d\n", result);
    return 0;
}
/*

3 1 1
1 1
1 2
1 3

 */