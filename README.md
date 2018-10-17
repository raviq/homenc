
# Homenc

Homomorphic encryption using [HElib](https://shaih.github.io/HElib/index.html).

## Building

Write your program in a file `prog.cpp` and then run
```
make prog_x
```
which will compile `prog.cpp`, link in `fhe.a` and all required support libraries, and create the executable `prog_x`.

## Usage

```
	bin/prog_x  R=1 k=10 p=2 r=2 noPrint=0
```
