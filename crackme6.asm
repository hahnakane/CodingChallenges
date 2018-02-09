.LC0:
  .string "flag{%s}"
main:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov DWORD PTR [rbp-6], 0x6c6c6568
  mov WORD PTR [rbp-2], 0x6f
  lea rax, [rbp-6]
  mov rdi, rax
  call foo(char*)
  lea rax, [rbp-6]
  mov rsi, rax
  mov edi, OFFSET FLAT:.LC0
  mov eax, 0
  call printf
  mov eax, 0
  leave
  ret
foo(char*):
  push rbp
  mov rbp, rsp
  mov QWORD PTR [rbp-24], rdi
  mov DWORD PTR [rbp-4], 0
.L6:
  mov eax, DWORD PTR [rbp-4]
  movsx rdx, eax
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  movzx eax, BYTE PTR [rax]
  test al, al
  je .L7
  mov eax, DWORD PTR [rbp-4]
  movsx rdx, eax
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  movzx eax, BYTE PTR [rax]
  cmp al, 0x60
  jle .L5
  mov eax, DWORD PTR [rbp-4]
  movsx rdx, eax
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  movzx eax, BYTE PTR [rax]
  cmp al, 0x7a
  jg .L5
  mov eax, DWORD PTR [rbp-4]
  movsx rdx, eax
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  movzx eax, BYTE PTR [rax]
  lea ecx, [rax-32]
  mov eax, DWORD PTR [rbp-4]
  movsx rdx, eax
  mov rax, QWORD PTR [rbp-24]
  add rax, rdx
  mov edx, ecx
  mov BYTE PTR [rax], dl
.L5:
  add DWORD PTR [rbp-4], 1
  jmp .L6
.L7:
  nop
  pop rbp
  ret
