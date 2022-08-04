#include <iostream>
using namespace std;

extern "C" void galois();
extern "C" unsigned int res = 1;
extern "C" unsigned int s = 0;

int main() {

    for (int i = 0; i < 32; i++) {
        galois();
        cout << s << endl;
    }
    
    system("pause");

	return 0;
}