# Stack-Based-Customized-Fibonacci-Hardware-Implementation
The goal of this project is to implement a customized fibonacci function using a stack. The C implementation of this function is as follows:

```c++
long fib(long n) {
    if(n <= 1) 
        return 1;
    else {
        if(n > N/2)
            return((n-1) * fib(n-1) + (n-2) * fib(n-2));
        else 
            return((n-2) * fib(n-1) + (n-1) * fib(n-2));
    }
}
```

This circuit takes N as input and computes the Nth number of the sequence as above (recursively).


We implemeneted the mentioned function recursively by a stack. The implemented stack supports 3 input signals, and 1 output signal:
* input signals:
  * Push: is used to insert an element at the top of the stack. 
  * Pop: is used to get and remove the most recently inserted element.
  * Top: is used to get the most recently inserted element.

* output signal:
  * is_empty: is true if the stack is empty.

Contributor: [Paria Khoshtab](https://github.com/Theparia/) 
