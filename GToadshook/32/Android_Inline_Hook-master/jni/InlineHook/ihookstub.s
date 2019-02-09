.global _shellcode_start_s
.global _shellcode_end_s
.global _hookstub_function_addr_s
.global _old_function_addr_s

.data

_shellcode_start_s:
    push    {r0, r1, r2, r3} //右到左入栈 sp_old-16  出为左到右
    mrs     r0, cpsr
    str     r0, [sp, #0xC]  //存标志寄存器到sp+12
    str     r14, [sp, #8]   //存连接寄存器到sp+8
    add     r14, sp, #0x10  
    str     r14, [sp, #4]   //sp_old存于sp_old-12
    pop     {r0}            //sp_old-12
    push    {r0-r12}        //sp_old-13*4-12
    mov     r0, sp          //传入指向寄存器的指针  栈中顺序为了符合pt_regs的结构
    ldr     r3, _hookstub_function_addr_s
    blx     r3
    ldr     r0, [sp, #0x3C]  //恢复标志寄存器
    msr     cpsr, r0
    ldmfd   sp!, {r0-r12}    //sp_old-12   
    ldr     r14, [sp, #4]    //恢复连接寄存器
    ldr     sp, [r13]        //恢复sp
    ldr     pc, _old_function_addr_s
    
_hookstub_function_addr_s:
.word 0xffffffff

_old_function_addr_s:
.word 0xffffffff

_shellcode_end_s:

.end
