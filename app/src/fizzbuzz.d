// FizzBuzz in D
import std.stdio;

void main() {
    for (int i = 1; i <= 100; i++) {
        if (i % 15 == 0) {
            writeln("fizzbuzz");
        } else if (i % 3 == 0) {
            writeln("fizz");
        } else if (i % 5 == 0) {
            writeln("buzz");
        } else {
            writeln(i);
        }
    }
}
