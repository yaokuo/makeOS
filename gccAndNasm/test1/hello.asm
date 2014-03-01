extern print_helloworld

[section .text]
global print_two_helloworld
print_two_helloworld:
	call	print_helloworld
	call	print_helloworld
