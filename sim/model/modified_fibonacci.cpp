#include <iostream>

using namespace std;
long N = 10;

long fib(long n) {
    if(n <= 1) return 1;
    else{
        if(n > N/2)
            return((n-1) * fib(n-1) + (n-2) * fib(n-2));
        else 
            return((n-2) * fib(n-1) + (n-1) * fib(n-2));

    }

}

int main()
{
    cout<<fib(N)<<endl;
    return 0;
}