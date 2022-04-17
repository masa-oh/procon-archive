#include <bits/stdc++.h>
using namespace std;
 
int main() {
  int n;
  vector<int> a(n,0);
  cin >> n;
  for (int i=0; i<n; i++) {
    cin >> a.at(i);
  }

  int ans = 0;
  for (int l=0; l<n; l++) {
    int x = a.at(l);
    for (int r=l; r<n; r++) {
      x = min(x, a.at(r));
      ans = max(ans, (r - l + 1) * x);
    }
  }
  cout << ans << endl;
}