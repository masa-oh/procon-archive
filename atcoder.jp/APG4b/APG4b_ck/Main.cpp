#include <bits/stdc++.h>
using namespace std;

int main() {
  string S;
  cin >> S;
  int ans = 1;

  for (int i; i < S.size(); i++) {
    if (i==0) continue;
    else if (S.at(i)=='+') {
      ans++;
    }
    else if (S.at(i)=='-') {
      ans--;
    }
  }
  
  cout << ans << endl;
}
