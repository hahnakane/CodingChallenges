foo(int):
  push rbp
  mov rbp, rsp
  mov DWORD PTR [rbp-4], edi
  mov eax, DWORD PTR [rbp-4]
  imul eax, DWORD PTR [rbp-4]
  pop rbp
  ret
.LC0:
  .string "flag{%d}"
main:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-4], 50
  mov eax, DWORD PTR [rbp-4]
  mov edi, eax
  call foo(int)
  mov DWORD PTR [rbp-8], eax
  mov eax, DWORD PTR [rbp-8]
  mov esi, eax
  mov edi, OFFSET FLAT:.LC0
  mov eax, 0
  call printf
  mov eax, 1
  leave
  ret
