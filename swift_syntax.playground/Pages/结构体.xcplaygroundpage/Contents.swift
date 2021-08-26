//: [Previous](@previous)

import Foundation



struct Date {
    var year: Int
    var month: Int
    var day: Int

}

var date = Date(year: 2021, month: 8, day: 24)



struct Point {
    var x: Int = 0
    var y: Int
}

var p1 = Point(x: 10, y: 10)
var p2 = Point(y: 10)


struct Point1 {
    var x: Int?
    var y: Int?
}

var p11 = Point1(x: 10, y: 10)
var p12 = Point1(y: 10)
var p13 = Point1(x: 10)
var p14 = Point1()

/* 这句话以上默认实现init不同构造器 */

struct Point2 {
    var x: Int = 0
    var y: Int = 0
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

var p21 = Point1(x: 10, y: 10)
// 下面是哪个报错,自定义实现了init构造器编译器不会自动生成
//var p22 = Point1(y: 10)
//var p23 = Point1(x: 10)
//var p24 = Point1()

struct Point3 {
    var x: Int = 0
    var y: Int = 0
    var b: Bool = true
}

let p31 = Point3()
// let修饰的结构体 不允许修改
// p31.x = 5
// p31.y = 5
// p31.b = false

MemoryLayout<Point3>.size    // 17
MemoryLayout<Point3>.stride  // 24
MemoryLayout<Point3>.alignment // 8





//: [Next](@next)
