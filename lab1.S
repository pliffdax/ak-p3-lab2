.syntax unified
.cpu cortex-m4
.thumb

.global lab1
.type lab1, %function

lab1:
  push {r4, r5, r6, lr} // зберігаємо регістри

  // Вхідні значення
  mov r0, #6 // a
  mov r1, #3 // b
  mov r2, #3 // c

  // (a + b)
  add r3, r0, r1 // r3 = a + b

  // (a + b)/2
  lsr r3, r3, #1 // r3 = r3 / 2

  // factorial: r5 = c!, r4 = лічильник
  mov r5, #1 // результат факторіалу
  mov r4, r2 // r4 = c

  cmp r4, #1 // якщо c <= 1
  ble _fact_done // то c! = 1

_fact_loop:
  mul r5, r5, r4 // r5 *= r4
  subs r4, r4, #1 // r4--
  cmp r4, #1 // ще множити?
  bgt _fact_loop // так, якщо r4 > 1

_fact_done:
  // (a + b)/2 + c!
  add r0, r3, r5 // r0 = r3 + r5

  pop {r4, r5, r6, pc} // повертаємось
.size lab1, .-lab1
