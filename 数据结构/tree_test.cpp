//
// Created by yonghu on 23-3-14.
//
#include "bits/stdc++.h"

using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;

    TreeNode() {}

    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

//递归法遍历树
void pre_traversal(TreeNode *cur, vector<int> &vec) {
    if (cur == NULL) return;
    vec.push_back(cur->val);    // 中
    pre_traversal(cur->left, vec);  // 左
    pre_traversal(cur->right, vec); // 右
}

void in_traversal(TreeNode *cur, vector<int> &vec) {
    if (cur == NULL) return;
    in_traversal(cur->left, vec);  // 左
    vec.push_back(cur->val);    // 中
    in_traversal(cur->right, vec); // 右
}

void post_traversal(TreeNode *cur, vector<int> &vec) {
    if (cur == NULL) return;
    post_traversal(cur->left, vec);  // 左
    post_traversal(cur->right, vec); // 右
    vec.push_back(cur->val);    // 中
}

// 迭代法遍历树
vector<int> preorderTraversal(TreeNode *root) {
    vector<int> result;
    stack<TreeNode *> st;
    if (root != NULL) st.push(root);
    while (!st.empty()) {
        TreeNode *node = st.top();
        if (node != NULL) {
            st.pop();
            if (node->right) st.push(node->right);  // 右
            if (node->left) st.push(node->left);    // 左
            st.push(node);                          // 中
            st.push(NULL);
        } else {
            st.pop();
            node = st.top();
            st.pop();
            result.push_back(node->val);
        }
    }
    return result;
}

vector<int> inorderTraversal(TreeNode *root) {
    vector<int> result;
    stack<TreeNode *> st;
    if (root != NULL) st.push(root);
    while (!st.empty()) {
        TreeNode *node = st.top();
        if (node != NULL) {
            st.pop(); // 将该节点弹出，避免重复操作，下面再将右中左节点添加到栈中
            if (node->right) st.push(node->right);  // 添加右节点（空节点不入栈）
            st.push(node);                          // 添加中节点
            st.push(NULL); // 中节点访问过，但是还没有处理，加入空节点做为标记。

            if (node->left) st.push(node->left);    // 添加左节点（空节点不入栈）
        } else { // 只有遇到空节点的时候，才将下一个节点放进结果集
            st.pop();           // 将空节点弹出
            node = st.top();    // 重新取出栈中元素
            st.pop();
            result.push_back(node->val); // 加入到结果集
        }
    }
    return result;
}

vector<int> postorderTraversal(TreeNode *root) {
    vector<int> result;
    stack<TreeNode *> st;
    if (root != NULL) st.push(root);
    while (!st.empty()) {
        TreeNode *node = st.top();
        if (node != NULL) {
            st.pop();
            st.push(node);                          // 中
            st.push(NULL);
            if (node->right) st.push(node->right);  // 右
            if (node->left) st.push(node->left);    // 左

        } else {
            st.pop();
            node = st.top();
            st.pop();
            result.push_back(node->val);
        }
    }
    return result;
}

// 层序遍历
void order(TreeNode *cur, vector<vector<int>> &result, int depth) {
    if (cur == nullptr) return;
    if (result.size() == depth) result.push_back(vector<int>());
    result[depth].push_back(cur->val);
    order(cur->left, result, depth + 1);
    order(cur->right, result, depth + 1);
}

vector<vector<int>> levelOrder(TreeNode *root) {
    vector<vector<int>> result;
    int depth = 0;
    order(root, result, depth);
    return result;
}

vector<vector<int>> level_Order(TreeNode *root) {
    queue<TreeNode *> que;
    if (root != NULL) que.push(root);
    vector<vector<int>> result;
    while (!que.empty()) {
        int size = que.size();
        vector<int> vec;
        // 这里一定要使用固定大小size，不要使用que.size()，因为que.size是不断变化的
        for (int i = 0; i < size; i++) {
            TreeNode *node = que.front();
            que.pop();
            vec.push_back(node->val);
            if (node->left) que.push(node->left);
            if (node->right) que.push(node->right);
        }
        result.push_back(vec);
    }
    return result;
}