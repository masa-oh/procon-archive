#include <bits/stdc++.h>
using namespace std;

int main() {
  int N, A;
  cin >> N >> A;

  char op;
  int B;
  for (int i=0; i<N; i++) {
    cin >> op >> B;
    if (op == '+') {
      A += B;
    }
    else if (op == '-') {
      A -= B;
    }
    else if (op == '*') {
      A *= B;
    }
    else if (op == '/' && B != 0) {
      A /= B;
    }
    else {
      cout << "error" << endl;
      break;
    }
    cout << i + 1 << ":" << A << endl;
  }
}