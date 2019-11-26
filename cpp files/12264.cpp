#include <iostream>
#include <queue>
#include <string>
#include <list>
#include <algorithm>

using namespace std;
list<int> line;
queue<int> country[3];

int main(){
    string s;
    int n , id;
    
    cin >> n;
    for(int i = 0; i < n; i++){
        cin >> s;
        if(s == "ENQUEUE"){
            cin >> id;
            int num = id % 3;
            country[num].push(id);
            if(find(line.begin(), line.end(), num) == line.end())
                line.push_back(num);
        }
        else if(s == "DEQUEUE"){
            int num = line.front();
            cout << country[num].front() << endl;
            country[num].pop();
            if(country[num].empty()) line.pop_front();
        }
    }
    return 0;
}
