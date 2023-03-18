#include "bits/stdc++.h"

using namespace std;

int main() {
    int n, k;
    cin >> n >> k;
    vector<int> input(n + 10, 0);
    vector<int> dp(n + 10, 0);
    vector<map<int,int>> mp(n + 10);
    dp[0] = 1;
    mp[0].insert({0, input});
    for (int i = 1; i < n; i++) {
        if (mp[i - 1].find(input[i]) != mp[i - 1].end()) {

            dp[i] = dp[i - 1] + 1;
        } else {
            if (dp[i - 1] < k) {
                dp[i] = dp[i - 1] + 1;
            } else{
                mp[i-1].era
            }
        }

    }
    return 0;
}