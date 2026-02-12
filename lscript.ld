/* Скрипт лінкера.
 * Описує розміщення пам’яті.
 */
MEMORY
{
  FLASH ( rx ) : ORIGIN = 0x08000000, LENGTH = 1M /* Пам’ять для програми */
  RAM   ( rxw ) : ORIGIN = 0x20000000, LENGTH = 128K /* Оперативна пам’ять */
}

/* Початок стеку — кінець RAM */
__stack_start = ORIGIN(RAM) + LENGTH(RAM);

