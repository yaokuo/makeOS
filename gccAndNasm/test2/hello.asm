global string
extern strhello
[section .data]
string:
	db 'I am Chinese.',0x0A,0x0
[section .text]
	global print_hello
	global cpy_mem
print_hello:	
	mov edx, 13		;参数1：字符串长度
	mov ecx,[strhello]	;参数2：要显示的字符串
	mov ebx,1		;参数3：文件描述符(stdout)
	mov eax,4		;系统调用号(sys_write)
	int 0x80		;调用内核功能
