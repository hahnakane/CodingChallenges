.LC0:
  .string "flag{%s}"
main:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-10], 1819043176
  mov WORD PTR [rbp-6], 111
  lea rax, [rbp-10]
  mov rdi, rax
  call strlen
  mov DWORD PTR [rbp-4], eax
  mov eax, DWORD PTR [rbp-4]
  lea edx, [rax-1]
  lea rax, [rbp-10]
  mov esi, 0
  mov rdi, rax
  call foo(char*, int, int)
  lea rax, [rbp-10]
  mov rsi, rax
  mov edi, OFFSET FLAT:.LC0
  mov eax, 0
  call printf
  mov eax, 0
  leave
  ret
foo(char*, int, int):
  push rbp
  mov rbp, rsp
  sub rsp, 32
  mov QWORD PTR [rbp-24], rdi
  mov DWORD PTR [rbp-28], esi
  mov DWORD PTR [rbp-32], edx
  mov eax, DWORD PTR [rbp-28]
  movsx rdx, eax
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  movzx eax, BYTE PTR [rax]
  mov BYTE PTR [rbp-1], al
  mov eax, DWORD PTR [rbp-32]
  sub eax, DWORD PTR [rbp-28]
  movsx rdx, eax
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  mov edx, DWORD PTR [rbp-28]
  movsx rcx, edx
  mov rdx, QWORD PTR [rbp-24]
  add rdx, rcx
  movzx eax, BYTE PTR [rax]
  mov BYTE PTR [rdx], al
  mov eax, DWORD PTR [rbp-32]
  sub eax, DWORD PTR [rbp-28]
  movsx rdx, eax
  mov rax, QWORD PTR [rbp-24]
  add rdx, rax
  movzx eax, BYTE PTR [rbp-1]
  mov BYTE PTR [rdx], al
  mov eax, DWORD PTR [rbp-32]
  mov edx, eax
  shr edx, 31
  add eax, edx
  sar eax
  cmp DWORD PTR [rbp-28], eax
  je .L6
  mov eax, DWORD PTR [rbp-28]
  lea ecx, [rax+1]
  mov edx, DWORD PTR [rbp-32]
  mov rax, QWORD PTR [rbp-24]
  mov esi, ecx
  mov rdi, rax
  call foo(char*, int, int)
  jmp .L3
.L6:
  nop
.L3:
  leave
  ret
