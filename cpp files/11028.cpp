#include "function.h"
#include <iostream>
using namespace std;

int isSorted(State s){
    int before = s.front();
    for(auto i : s){
        if(before > i)
            return 0;
        else
            before = i;
    }
    return 1;
}
set<State> SwapSort::extend(State s){
    set<State> SS;
    State tmp = s;
    
    tmp[0] = tmp[0] + tmp[1];
    tmp[1] = tmp[0] - tmp[1];
    tmp[0] = tmp[0] - tmp[1];// what's all of these for?
    
    s.front() = s.front() + s.back();
    s.back() = s.front() - s.back();
    s.front() = s.front() - s.back();
    
    SS.insert(tmp);
    SS.insert(s);
    
    return SS;
}
void SwapSort::solve(int steps){
    while (steps > 0){
        set<list<State>> newPath;
        set<list<State>> oldPath;
        
        for(auto p : _paths){
            _explored.insert(p.back());
            auto nextStates = extend(p.back());
            for(auto s : nextStates){
                if(isSorted(s)){
                    auto np = p;
                    np.push_back(s);
                    _solutions.insert(np);
                }
                else{
                    auto search = _explored.find(s);
                    if(search == _explored.cend()){
                        auto np = p;
                        np.push_back(s);
                        newPath.insert(np);
                    }
                }
            }
            oldPath.insert(p);
        }
        for(auto p : oldPath)
            _paths.erase(p);
        for(auto p : newPath)
            _paths.insert(p);
        --steps;
    }
}
