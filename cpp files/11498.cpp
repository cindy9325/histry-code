#include <iostream>
#include <set>
using namespace std;

int main(){
    set<int> parents;
    set<int> all;
    
    int N;
    int parent , child , root;
    
    while (cin >> N) {
        if(N == 0) break;
        parents.clear();
        all.clear();
        for (int i = 0; i < N; i++) {
            cin >> parent >> child;
            all.insert(parent);
            all.insert(child);
            parents.insert(parent);
        }
        cin >> root;
        cout << all.size() - parents.size() << endl;
    }
}
