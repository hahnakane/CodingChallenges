.LC0:
  .string "%d %d"
.LC1:
  .string " %d"
main:
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov DWORD PTR [rbp-4], 0
  mov DWORD PTR [rbp-8], 1
  mov DWORD PTR [rbp-16], 15
  mov edx, DWORD PTR [rbp-8]
  mov eax, DWORD PTR [rbp-4]
  mov esi, eax
  mov edi, OFFSET FLAT:.LC0
  mov eax, 0
  call printf
  mov DWORD PTR [rbp-12], 2
.L3:
  mov eax, DWORD PTR [rbp-12]
  cmp eax, DWORD PTR [rbp-16]
  jge .L2
  mov edx, DWORD PTR [rbp-4]
  mov eax, DWORD PTR [rbp-8]
  add eax, edx
  mov DWORD PTR [rbp-20], eax
  mov eax, DWORD PTR [rbp-20]
  mov esi, eax
  mov edi, OFFSET FLAT:.LC1
  mov eax, 0
  call printf
  mov eax, DWORD PTR [rbp-8]
  mov DWORD PTR [rbp-4], eax
  mov eax, DWORD PTR [rbp-20]
  mov DWORD PTR [rbp-8], eax
  add DWORD PTR [rbp-12], 1
  jmp .L3
.L2:
  mov eax, 0
  leave
  ret
