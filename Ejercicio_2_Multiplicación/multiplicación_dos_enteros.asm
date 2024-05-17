section .data 
   
   msg db "Bienvenido!! a continuacion multiplicaremos dos numeros enteros.", 0xA,0xD 
   len equ $- msg
   
   msg1 db "Ingrese un numero del 1 al 4: ", 0xA,0xD 
   len1 equ $- msg1 

   msg2 db "Ingrese otro numero del 1 al 3: ", 0xA,0xD 
   len2 equ $- msg2 

   msg3 db "El resultado de la multiplicacion es: "
   len3 equ $- msg3
   
   line_break db 0xA     ;salto de linea 

section .bss

   num1 resb 2 
   num2 resb 2 
   res resb 1    

section .text
   global _start    
	
_start:     
  
   ;Limpiando registros
   mov eax, 0
   mov ebx, 0
   mov ecx, 0
   mov edx, 0
   mov al, 0
   mov bl, 0
  
   ;Bienvenida sistema
   mov eax, 4
   mov ebx, 1
   mov ecx, msg
   mov edx, len
   int 80h
  
   ;Solicitar primer número
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

   ;Solicitar segundo número
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

   ;Convertir caracteres a números
   mov al,[num1]
   sub al, '0'
   mov bl,[num2]
   sub bl, '0'

   ;Multiplicar los números en 8 bits
   mul bl

   ;Convertir resultado de número a caracter
   add al, '0'
   mov [res], al

   ;Mostrar resultado
   mov eax, 4        
   mov ebx, 1
   mov ecx, msg3         
   mov edx, len3        
   int 80h
   mov eax, 4        
   mov ebx, 1
   mov ecx, res         
   mov edx, 1        
   int 80h
   
   ;salto de linea
   mov eax, 4
   mov ebx, 1
   mov ecx, line_break
   mov edx, 1
   int 80h
   
   ;salir del programa
   mov eax, 1   
   mov ebx, 0 
   int 80h

