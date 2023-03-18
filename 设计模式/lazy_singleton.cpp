//
// Created by yonghu on 23-3-18.
//
#include "bits/stdc++.h"

using namespace std;

// 懒汉单例模式
class Singleton {
public:
    static Singleton* getInstance() {
        if (instance == nullptr) {
            instance = new Singleton();
        }
        return instance;
    }

    // 禁止拷贝构造函数和赋值运算符
    Singleton(const Singleton&) = delete;
    Singleton& operator=(const Singleton&) = delete;

private:
    Singleton() {}

    static Singleton* instance;
};

Singleton* Singleton::instance = nullptr; // 类外初始化

int main() {
    Singleton* s1 = Singleton::getInstance();
    Singleton* s2 = Singleton::getInstance();
    cout << (s1 == s2) << endl; // 输出 1，表示两个指针指向同一个实例
    return 0;
}