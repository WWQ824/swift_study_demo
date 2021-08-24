//: [Previous](@previous)

/*:

# 字节大小
* b-byte       1字节
* h-half word  2字节
* w-word       4字节
* g-giant word 8字节

# 格式
* x是十六进制
* f是浮点
* d是十进制


# 读取寄存器的值
* register read/格式
* register read/x

# 修改寄存器的值
* register write 寄存器名称 数值
* register write rax 0

# 读取内存中的值
* x 内存地址
* x/数量-格式-字节大小 内存地址
* x/3xw 内存地址

# 修改内存中的值
* memory write 内存地址 数值
* memory 0x0000010 10


# expression 表达式
* 可以简写:expr 表达式
* expression $rax
* expression $rax = 1
 
 
# po 表达式
# print 表达式
 
* po/x $rax
* po (int)$rax
 
 
### thread step-over, next, n
* 单步运行, 把子函数当做整体一步执行(源码级别)
 
### thread step-in, step, s
* 单步运行, 遇到子函数会进入子函数(源码级别)

### thread step-inst-over, nexti, ni
* 单步运行, 把子函数当做整体一步执行(汇编级别)

### thread step-inst, stepi, si
* 单步运行, 遇到子函数会进入子函数(汇编级别)

### thread step-out, finish
* 直接执行完当前函数的所有代码,返回到上一个函数(遇到断电会卡主)
 
*/





//: [Next](@next)
