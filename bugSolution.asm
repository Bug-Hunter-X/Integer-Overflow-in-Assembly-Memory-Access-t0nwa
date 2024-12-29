; Check for potential overflow before memory access
mov eax, ecx
imul eax, 4 ; eax = ecx * 4
jo overflow_handler ; Jump to handler if overflow occurred
add eax, ebx ; eax = ebx + ecx * 4
mov edx, [eax] ; Access memory at calculated address
jmp after_access

overflow_handler:
; Handle overflow error - e.g., set error flag or exit
mov [error_flag], 1

after_access:
; continue execution...