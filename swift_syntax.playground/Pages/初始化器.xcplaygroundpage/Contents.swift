//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// 类有2种初始化器
// 1. 指定初始化器
// 2. 便捷初始化器
class Size {
    var width: Int = 0
    var height: Int = 0

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    convenience init(width: Int) {
        self.init(width: width,height: 0)
    }
    convenience init() {
        self.init(width: 0,height: 0)
    }
}


class Pesrosn {
    var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    
}

class Student : Pesrosn {
    var score: Int
    
    init(age: Int, score: Int) {
        self.score = score
        super.init(age: age)
    }
    
    override init(age: Int) {
        self.score = 0
        super.init(age: age)
    }
    
    
}

// 自动继承
// 子类没有指定构造器,则继承父类的指定构造器

// 可失败初始化器
// init?

// 反初始化器
// deinit


// 可选链
// person?.dog.weight




//: [Next](@next)
