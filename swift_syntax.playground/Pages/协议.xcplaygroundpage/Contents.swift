//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// 协议中定义属性时必须用var关键字
// 实现协议时的属性权限要不小于协议中定义的属性权限
// 协议定义get,set,用var存储属性或get,set计算属性去实现
// 协议定义get 用任何属性实现都可以
// 为了保证通用, 协议中必须用static定义类型方法,类型属性,类型下标

protocol Drawable {
    func draw()
    var x: Int { get set }
    var y: Int { get }
    subscript(index: Int) -> Int { get set}
}


class Person : Drawable {
    var x: Int = 0
    let y: Int = 0
    func draw() {
        
    }
    
    subscript(index: Int) -> Int {
        set {}
        get { index }
    }
}



// mutating
// 只有将协议中的实例方法标记为mutating,才允许结构体,枚举的具体实现修改自身内存
// 类在实现方法时不用加mutating,枚举结构体才需要加mutating

// init
// 协议中还可以定义初始化器init
// 非final类实现时必须加上required

// 如果从协议实现的初始化器刚好是重写了父类的指定初始化器那么这个初始化必须同时加required,override
// 协议中定义的init?, init!, 可以用init, init?, init!去实现
// 协议中定义的init, 可以用init, init!去实现

// 协议的继承

// 协议组合, 可以包含1个类类型(最多一个)
// 接收Person或其子类的实例
// func fn0(obj: Person)
// 接收遵守协议的实例
// func fn1(obj: Drawable)
// 接收同时遵守2个协议的实例
// func fn2(obj: Drawable & Runnable)
// 接收同时遵守2个协议, 并且是Person或其子类的实例
// func fn3(obj: Person & Drawable & Runnable)
// typealias RealPerson = Person & Drawable & Runnable
// func fn4(obj: RealPerson)


// CaseIterable
enum Season : CaseIterable {
    case spring, summer, autumn, winter
}

let seasons = Season.allCases

for season in seasons {
    print(season)
}



// CustomStringConvertible
// 遵守此协议可以自定义实例的打印字符串



// 2中特殊类型:Any, AnyObject
// Any:可以代表任意类型
// AnyObject:可以嗲表任意类类型(在协议后面写上:AnyObject代表只有类能遵守这个协议)


var any: Any = 10
any = "Jack"
any = Person()
var data = Array<Any>()
var data1 = [Any]()

// is用来判断是否为某种类型
if any is Person {
    // true
}

// as用来做强制类型转换
any = 100
(any as? Person)?.draw() // 不会调用
any = Person()
(any as! Person).draw() // 会调用

var data3 = [Any]()
data.append(Int("11") as Any)

var d = 10 as Double

// x.self:是一个元类型的指针,元类型存放着类型相关信息
// x.self属于x.Type
var pType: Person.Type = Person.self // 实例对象any前8个字节存储的地址是一样的
any.self

// x.Type
// AnyClass
class Stu {}
var x: AnyClass = Person.self
x = Stu.self

// 本质编译器遇到type(of:)直接取出地址指向内存前8个字节
type(of: any)


// Self 



//: [Next](@next)
