section .data
   msg db "Bienvenido!! a continuacion realizaremos la división de dos numeros enteros.", 0xA,0xD 
   len equ $- msg 

   msg1 db "Ingrese un numero del 1 al 9: ", 0xA,0xD
   len1 equ $- msg1

   msg2 db "Ingrese otro numero del 1 al 9: ", 0xA,0xD
   len2 equ $- msg2

   msg3 db "El resultado de la division es: "
   len3 equ $- msg3
   
   msg4 db "No se puede dividir entre cero.", 0xA,0xD
   len4 equ $- msg4
   
   line_break db 0xA     ;salto de linea 

section .bss
   num1 resb 2
   num2 resb 2
   result  resb 1

section .text
   global _start

_start:

   ; Limpiando registros
   mov eax, 0
   mov ebx, 0
   mov ecx, 0
   mov edx, 0
   
   ;Bienvenida del sistema
   mov eax, 4        
   mov ebx, 1         
   mov ecx, msg         
   mov edx, len
   int 80h

   ;Solicitando el primer número
   mov eax, 4
   mov ebx, 1
   mov ecx, msg1
   mov edx, len1
   int 80h

   ;Lee el primer número
   mov eax, 3
   mov ebx, 0
   mov ecx, num1
   mov edx, 2
   int 80h

   ;Solicitando el segundo número
   mov eax, 4
   mov ebx, 1
   mov ecx, msg2
   mov edx, len2
   int 80h

   ;Lee el segundo número
   mov eax, 3
   mov ebx, 0
   mov ecx, num2
   mov edx, 2
   int 80h

   ;Convirtiendo los números de ASCII a entero
   
   mov al, [num1]
   sub al, '0'
 
   mov bl, [num2]
   sub bl, '0'
   
   ;Comprobando si el divisor es cero
   cmp ebx, 0
   je division_por_cero

   ;Limpiando edx antes de la división
   mov edx, 0

   ;Dividiendo el primer número por el segundo número
   div ebx

   ;Convirtiendo el resultado de entero a ASCII
   add eax, '0' 

   ;Guardando el resultado en result
   mov [result], eax 

   ;Imprimiendo el resultado de la división
   mov eax, 4
   mov ebx, 1
   mov ecx, msg3
   mov edx, len3
   int 80h

   mov eax, 4
   mov ebx, 1
   mov ecx, result
   mov edx, 1 
   int 80h
   
   ;salto de linea
   mov eax, 4
   mov ebx, 1
   mov ecx, line_break
   mov edx, 1
   int 80h

   ;Salida del programa
   mov eax, 1
   mov ebx, 0
   int 80h

division_por_cero:
   ;Imprimir mensaje de error
   mov eax, 4
   mov ebx, 1
   mov ecx, msg4
   mov edx, len4
   int 80h

   ;Salida del programa
   mov eax, 1
   mov ebx, 0
   int 80h
