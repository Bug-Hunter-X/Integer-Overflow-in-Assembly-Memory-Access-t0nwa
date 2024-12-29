# Integer Overflow in Assembly Memory Access

This repository demonstrates a potential integer overflow bug in assembly code that can lead to memory access violations.  The vulnerability lies in the calculation of a memory address using register arithmetic.  A solution is provided that mitigates the risk of overflow.

## Bug Description

The `mov eax, [ebx+ecx*4]` instruction calculates a memory address by adding `ebx` and the result of `ecx * 4`. If `ecx` is large enough, this calculation can overflow the register's capacity, resulting in an incorrect address and potentially a crash.

## Solution

The solution involves adding checks to ensure that the calculated address remains within the bounds of the allocated memory.  This prevents accessing memory that the program doesn't own.