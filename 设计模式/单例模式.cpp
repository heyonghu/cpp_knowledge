//
// Created by yonghu on 23-3-18.
//
#include "bits/stdc++.h"

using namespace std;
// 单例模式
class Singleton {
private:
    static Singleton* instance;
    Singleton() {}

public:
    static Singleton* getInstance() {
        if (instance == nullptr) {
            instance = new Singleton();
        }
        return instance;
    }
};

Singleton* Singleton::instance = nullptr;

// 懒汉单例



// 饿汉单例




int main(){

    return 0;
}