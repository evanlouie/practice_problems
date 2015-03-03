#include <iostream>
#include <cmath>
using namespace std;

// Standard string reverse using a temp variable
char* reverse(char* string) {
  for (int i=0; i<=(strlen(string)/2)-1;i++) {
    char c = string[i];
    string[i] = string[strlen(string)-1-i];
    string[strlen(string)-1-i] = c;
  }
  return string;
}

// Bitwise verison exploiting the XOR operator
char* reverse_bitwise(char* string) {
  int middle;
  if (strlen(string)%2==0) {
    middle = (strlen(string)/2)-1;
  } else {
    middle = strlen(string)/2;
  }
  for (int i=0; i<strlen(string)/2;i++) {
    string[i] = string[i] ^ string[strlen(string)-1-i];
    string[strlen(string)-1-i] = string[i] ^ string[strlen(string)-1-i];
    string[i] = string[i] ^ string[strlen(string)-1-i];
  }
  return string;
}

int main() {

  char* original;
  cout << "Insert string to reverse" << endl;
  cin >> (original = new char);
  cout << "Original:\t\t" << original << endl;
  // cout << "Reversed (normal):\t\t" << reverse(original) << endl;
  cout << "Reversed (bitwise):\t\t" << reverse_bitwise(original) << endl;
}
