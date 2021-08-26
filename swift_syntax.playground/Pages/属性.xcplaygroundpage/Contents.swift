//: [Previous](@previous)

import UIKit
import Foundation

/*:
 ### 存储属性
 - 类似于成员变量概念
 - 存储在实例的内存中
 - 结构体, 类可以定义存储属性
 - 枚举不可以定义存储属性
 - 在类, 结构体创建实例时保证所有的存储属性必须设置个合理的初始值
 

 ### 计算属性
 - 本质就是方法(函数)
 - 不占用实例的内存
 - 枚举, 类, 结构体都可以定义计算属性
 - 只有get 没有set为只读计算属性
 - 有set必须要有get
 - 只能用var修饰, 不能用let修饰
 */


struct Circle {
    // 存储属性
    var radius: Int
    // 计算属性
    var diameter: Int {
//        set(newDiameter) {
//            radius = newDiameter >> 1
//        }
        set {
            radius = newValue >> 1
        }
        get {
            radius << 1
        }
    }

//     只有get可以简写成
//    var diameter: Int { radius << 1 }

    
    init() {
        radius = 0
    }
    
}



enum Season: Int {
    case spring, summer, autumn, winter
    
    var rawValue: Int {
        switch self {
        case .spring:
            return 11
        case .summer:
            return 22
        case .autumn:
            return 33
        case .winter:
            return 44
        }
    }

}

var season = Season.spring
// rawValue本质是只读计算属性
print(season.rawValue)



// 延迟存储属性, 第一次用到属性的时候才会初始化
// lazy属性必须是var, 不能是let
// 结构体中定义了延迟存储属性,只有var才能访问
class Car {
    init() {
        print("Car init")
    }
    func run() {
        print("Car run")
    }
}

class Person {
    lazy var car = Car()
    init() {
        print("Person init")
    }
    func goOut() {
        car.run()
    }
//    lazy var image: UIImage? = {
//        let url = "xxxxx"
//        let data =  Data(url: url)
//        return UIImage(data: data)
//    }()
}

let p = Person()
print("-----------")
p.goOut()




// 属性观察器
// 可以为非lazy的var存储属性设置属性观察器
// 在初始化器中设置属性值或者定义属性设置初始值都不会触发属性观察器

// 属性观察器, 计算属性的功能, 同样可以应用在全局变量,局部变量身上

class Point {
    var x: Double {
        willSet {
            print("willSet", newValue)
        }
        
        didSet {
            print("didSet", oldValue, x)
        }
    }
    
    init() {
        self.x = 10
        print("Point init!")
    }
}



var point = Point()

point.x = 20

print(point.x)




// inout本质:引用传递(地址传递)
// 1.如果实参有物理内存地址,且没有设置属性观察器,则直接将实参的内存地址传入函数(实参进行引用传递)


// 2.如果实参是计算属性或设置属性观察器,采用了copy in copy out做法,
// 调用该函数是先复制实参的值 产生副本[get]
// 将副本的内存地址传入函数(副本进行引用传递),在函数内部可以修改副本的值
// 函数返回后, 再将副本的值覆盖实参的值[set]



// 类型属性
// 1.实例属性:只能通过实例去访问
// 计算实例属性 方法
// 存储实例属性 存储在实例内存中,每个实例都有1份

// 2.类型属性:只能通过类型去访问
// 存储类型属性:整个程序运行过程中,就只有1分内存(类似于全局变量)
// 计算类型属性:

// 可以通过static定义类型属性
// 如果是类, 也可以用关键字class
// 可以是let

// 枚举可以定义存储类型属性,计算类型属性

struct Shape {
    var width: Int = 0
    // 类型存储属性
    static var count: Int = 0
}


// 单例模式
class FileManager {
    private init(){}
    public static let shared: FileManager = FileManager()
    func open() {
        print("FileManager--open()")
    }
    func close() {
        print("FileManager--close()")
    }
    
}

FileManager.shared.open()
FileManager.shared.close()


//: [Next](@next)
