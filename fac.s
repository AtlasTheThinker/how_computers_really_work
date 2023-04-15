.global _start

.text
_start:
    ldr r1, =n
    ldr r0, [r1]
    subs r3, r0, #1
    ble end
loop:
    mul r0, r3, r0
    subs r3, r3, #1
    bne loop
end:
    ldr r1, =result
    str r0, [r1]
    mov r0, #0
    mov r7, #1
    svc 0

.data
    n: .word 5
    result: .word 0