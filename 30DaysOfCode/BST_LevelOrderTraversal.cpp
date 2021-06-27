#include <iostream>
#include <cstddef>
#include <queue>
#include <string>
#include <cstdlib>

using namespace std;	
class Node{
    public:
        int data;
        Node *left,*right;
        Node(int d){
            data=d;
            left=right=NULL;
        }
};
class Solution{
    public:
  		Node* insert(Node* root, int data){
            if(root==NULL){
                return new Node(data);
            }
            else{
                Node* cur;
                if(data<=root->data){
                    cur=insert(root->left,data);
                    root->left=cur;
                }
                else{
                   cur=insert(root->right,data);
                   root->right=cur;
                 }           
           return root;
           }
        }

	void levelOrder(Node * root){
        //Write your code here
        queue<Node*> q;
        vector<int> v;
        if(!root){
            cout << "-1" << endl;
        }else{
            q.push(root);
            while(!q.empty()){
                Node* a = q.front();
                v.push_back(a->data);
                q.pop();
                if(a->left != NULL)
                    q.push(a->left);
                if(a->right != NULL)
                    q.push(a->right);
            }
            for(int i=0; i<v.size(); i++){
                cout << v[i] << " ";
            }
            cout << endl;
        }
  
	}

};//End of Solution
int main(){
    Solution myTree;
    Node* root=NULL;
    int T,data;
    cin>>T;
    while(T-->0){
        cin>>data;
        root= myTree.insert(root,data);
    }
    myTree.levelOrder(root);
    return 0;
}