//: [Previous](@previous)

import Foundation

//tagpointer技术
// 字符串长度<0xf,字符串内容直接存放在str1变量的内存中
var str1 = "0123456789"

// 字符串长度>0xf,字符串内容存放在__TEXT.cstring中(常量区)
// 字符串的地址值信息存放在str2变量的后8个字节中
var str2 = "0123456789ABCDEF"

// 由于字符串长度<0xf,所以字符串内容依然存放在str1变量的内存中
str1.append("ABCDE")
// 字符串长度>0xf,开辟堆空间
str1.append("F")
// 开辟堆空间
str2.append("G")


//: [Next](@next)
