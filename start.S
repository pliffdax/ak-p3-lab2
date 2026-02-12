.syntax unified
.cpu cortex-m4
.thumb

.global vtable
.global __hard_reset__

.type vtable, %object
.type __hard_reset__, %function

vtable:
  .word __stack_start
  .word __hard_reset__+1
.size vtable, .-vtable

__hard_reset__:
  ldr r0, =__stack_start // беремо адресу стеку
  mov sp, r0 // ініціалізація SP

  bl lab1 // виконуємо обчислення

_loop:
  b _loop // далі просто чекаємо
.size __hard_reset__, .-__hard_reset__

