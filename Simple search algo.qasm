/*
Code for a simple search algorithm. 
The circuit is taken from p. 257 of "Nielsen and Chuang"
The code searches for 3 in a list of numbers 0, 1, 2, 3.
In particular, given the input |000>,
the circuit outputs |111>.
The first two q-bits (i.e. the two right-most qbits in the bra-ket notation)
denote the answer (i.e. 3) and the last q-bit
is an oracle q-bit.
*/
OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[2];

x q[2];
h q[0];
h q[1];
h q[2];
ccx q[0], q[1], q[2];
h q[0];
h q[1];
x q[0];
x q[1];
h q[1];
cx q[0], q[1];
h q[1];
x q[0];
x q[1];
h q[0];
h q[1];
h q[2];

// @columns [0,1,1,1,3,5,5,6,6,7,8,9,10,10,11,11,11]
