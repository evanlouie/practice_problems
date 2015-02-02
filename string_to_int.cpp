#include <iostream>
#include <cmath>
using namespace std;
int main()
{
  char input[] = "12345";
  std::cout << "Original:" << input << std::endl;

  int as_int = 0;
  for (int i = strlen(input)-1; i>=0; i--) {
    as_int += (((int) input[i]-'0')*pow(10,strlen(input)-i-1));
  }

  std::cout << "As int:" << as_int << std::endl;
}
