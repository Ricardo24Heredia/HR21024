section .data

   msg db "Bienvenido!! a continuacion realizaremos la resta de tres numeros enteros.", 0xA,0xD 
   len equ $- msg 

   msg1 db "Ingrese el primer numero del 1 al 9: ", 0xA,0xD 
   len1 equ $- msg1 

   msg2 db "Ingrese el segundo numero del 1 al 9: ", 0xA,0xD 
   len2 equ $- msg2 

   msg3 db "Ingrese el tercer numero del 1 al 9: ", 0xA,0xD 
   len3 equ $- msg3

   msg4 db "El resultado de la resta es: "
   len4 equ $- msg4
   
   line_break db 0xA     ;salto de linea 

section .bss

   num1 resb 2 
   num2 resb 2 
   num3 resb 2 
   result  resb 1    

section .text
   global _start    
	
_start:     
  
   ;limpiando registros
   mov ax, 0
   mov bx, 0
   mov cx, 0
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
  
   ;Solicitar el primer número
   mov eax, 4         
   mov ebx, 1         
   mov ecx, msg1         
   mov edx, len1 
   int 80h               
   
   ;lee el numero ingresado
   mov eax, 3 
   mov ebx, 0  
   mov ecx, num1 
   mov edx, 2
   int 80h           

   ;Solicitar el segundo número
   mov eax, 4        
   mov ebx, 1         
   mov ecx, msg2          
   mov edx, len2         
   int 80h
   
   ;lee el numero ingresado
   mov eax, 3  
   mov ebx, 0  
   mov ecx, num2 
   mov edx, 2
   int 80h       

   ;Solicitar el tercer número
   mov eax, 4        
   mov ebx, 1         
   mov ecx, msg3          
   mov edx, len3         
   int 80h
   
   ;lee el numero ingresado
   mov eax, 3  
   mov ebx, 0  
   mov ecx, num3 
   mov edx, 2
   int 80h  

   ;Convertir los números ASCII a valores decimales
   mov ax, [num1]
   sub ax, '0'

   mov bx, [num2]
   sub bx, '0'

   mov cx, [num3]
   sub cx, '0'

   ; Restar los números
   sub ax, bx
   sub ax, cx

   ;Convertir el resultado a ASCII
   add ax, '0'

   ;Guardar el resultado en result
   mov [result], ax

   ;Mostrar el resultado
   mov eax, 4        
   mov ebx, 1
   mov ecx, msg4         
   mov edx, len4        
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

