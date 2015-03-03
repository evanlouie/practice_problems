// This is how to convert a string to and int using a little ASCII trick involving knowing that subtracting '0' from any single number char will leave you with the decimal value of the number.

#include <iostream>
#include <cmath>
using namespace std;

int main()
{
  cout << "Enter number string:" << endl;
  char* input;
  cin >> (input = new char);

  int as_int = 0;
  for (int i = strlen(input)-1; i>=0; i--) {
    as_int += (((int) input[i]-'0')*pow(10,strlen(input)-i-1));
  }

  cout << "Original:\t" << input << endl;
  cout << "As int:\t\t" << as_int << endl;
}
