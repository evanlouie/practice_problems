#include <iostream>
using namespace std;

typedef struct Node {
  int val;
  Node* prev;
  Node* next;
}Node;


int main() {

  Node* current;
  for (int i=0; i<=10; i++) {
    current = new Node;
    current->val = i;
    current->next = new Node;
    current->next->prev = current;
  }
  
}
