foo(int, int):
  push rbp
  mov rbp, rsp
  mov DWORD PTR [rbp-4], edi
  mov DWORD PTR [rbp-8], esi
  mov eax, DWORD PTR [rbp-4]
  cdq
  idiv DWORD PTR [rbp-8]
  pop rbp
  ret
.LC0:
  .string "flag{%d}"
main:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-4], 1000
  mov DWORD PTR [rbp-8], 250
  mov edx, DWORD PTR [rbp-8]
  mov eax, DWORD PTR [rbp-4]
  mov esi, edx
  mov edi, eax
  call foo(int, int)
  mov DWORD PTR [rbp-12], eax
  mov eax, DWORD PTR [rbp-12]
  mov esi, eax
  mov edi, OFFSET FLAT:.LC0
  mov eax, 0
  call printf
  mov eax, 1
  leave
  ret
