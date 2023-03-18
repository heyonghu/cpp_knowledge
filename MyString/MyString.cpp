#include <cstring>
#include <iostream>
#include <string>
#include "vector"
using namespace std;
class MyString {
  private:
    char* m_data;  // 字符串数据
    int m_size;    // 字符串大小

  public:
    // 构造函数
    MyString() : m_data(nullptr), m_size(0) {}

    MyString(const char* str) {
        m_size = strlen(str);
        m_data = new char[m_size + 1];
        strcpy(m_data, str);
    }

    // 拷贝构造函数
    MyString(const MyString& other) {
        m_size = other.m_size;
        m_data = new char[m_size + 1];
        strcpy(m_data, other.m_data);
    }

    // 赋值运算符
    MyString& operator=(const MyString& other) {
        if (this != &other) {
            delete[] m_data;
            m_size = other.m_size;
            m_data = new char[m_size + 1];
            strcpy(m_data, other.m_data);
        }
        return *this;
    }

    // 析构函数
    ~MyString() {
        delete[] m_data;
        m_data = nullptr;
        m_size = 0;
    }

    // 连接运算符
    MyString operator+(const MyString& other) const {
        MyString new_str;
        new_str.m_size = m_size + other.m_size;
        new_str.m_data = new char[new_str.m_size + 1];
        strcpy(new_str.m_data, m_data);
        strcat(new_str.m_data, other.m_data);
        return new_str;
    }

    // 比较运算符
    bool operator==(const MyString& other) const {
        return strcmp(m_data, other.m_data) == 0;
    }

    bool operator!=(const MyString& other) const {
        return strcmp(m_data, other.m_data) != 0;
    }

    bool operator<(const MyString& other) const {
        return strcmp(m_data, other.m_data) < 0;
    }

    bool operator>(const MyString& other) const {
        return strcmp(m_data, other.m_data) > 0;
    }

    bool operator<=(const MyString& other) const {
        return strcmp(m_data, other.m_data) <= 0;
    }

    bool operator>=(const MyString& other) const {
        return strcmp(m_data, other.m_data) >= 0;
    }

    // 返回字符串长度
    int size() const { return m_size; }

    // 返回C风格字符串
    const char* c_str() const { return m_data; }
};

// 测试函数
int main() {
    // char* 
    MyString str1 = "hello";
    MyString str2 = "world";
    MyString str3 = str1 + str2;
    // string x = "1234";

    std::cout << "str1 == str2: " << (str1 == str2) << std::endl;
    std::cout << "str1 != str2: " << (str1 != str2) << std::endl;
    std::cout << "str1 < str2: " << (str1 < str2) << std::endl;
    std::cout << "str1.size(): " << str1.size() << std::endl;
    std::cout << "str2.size(): " << str2.size() << std::endl;
    std::cout << "str3.size(): " << str3.size() << std::endl;
    std::cout << "str1 < str2: " << (str1 < str2) << std::endl;
    std::cout << "str1 > str2: " << (str1 > str2) << std::endl;
    std::cout << "str1 <= str2: " << (str1 <= str2) << std::endl;
    std::cout << "str1 >= str2: " << (str1 >= str2) << std::endl;
    return 0;
}