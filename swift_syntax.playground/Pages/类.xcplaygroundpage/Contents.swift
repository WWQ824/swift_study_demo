//: [Previous](@previous)

import Foundation

class Point {
    var x: Int = 0
    var y: Int = 0
}

let p = Point()
// let修饰的,指针地址指向不能改,但是指向的内存可以修改
//p = Point(1, 1)
p.x = 1
p.y = 2

class Point1 {
    var x: Int
    var y: Int
    init() {
        self.x = 0
        self.y = 0
    }
}

let p1 = Point1()
p1.x = 5
p1.y = 10

// 获取使用的大小
class_getInstanceSize(Point1.self)
class_getInstanceSize(type(of: p1))
// 获取分配的大小
//malloc_size(<#T##ptr: UnsafeRawPointer!##UnsafeRawPointer!#>)


/*:  ### 结构体与类的本质区别:结构体是值类型, 类是引用类型
   在Mac,iOS中的malloc函数分配的内存 总是16的倍数

    类, 枚举,  结构体都可以定义方法, 且不暂用对的内存,本质就是函数
 方法,函数都存在代码段
 
 代码段 地址小
 数据段
 堆
 栈         地址大
 
 
 
 
*/












//: [Next](@next)
