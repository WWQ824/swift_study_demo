//: [Previous](@previous)

import Foundation





// 常见错误有以下三种:
// 语法错误
// 逻辑错误
// 运行时错误(可能会导致闪退, 一般也叫做异常)


// 自定义错误
// 函数内部通过throw跑出自定义Error,可能会跑出Error的函数必须加上throws声明
// 需要使用try调用可能会报出Error的函数
enum SomeError : Error {
    case illegalArg(String)
    case outOfBounds(Int, Int)
    case outOfMemory
}



func divide(_ n1: Int, _ n2: Int) throws -> Int {
    
    if n2 == 0 {
        throw SomeError.illegalArg("0不能作为除数")
    }
    
    return n1 / n2
}


do {
    let res = try divide(20, 0)
    print(res)
} catch let SomeError.illegalArg(msg) {
    print("参数异常:", msg)
} catch let SomeError.outOfBounds(size, index) {
    print("下标越界:", "size=\(size)", "index=\(index)")

} catch SomeError.outOfMemory {
    print("内存溢出")

} catch {
    print("其他异常")
}


do {
    try print(divide(100, 0))
} catch is SomeError {
    print("SomeError")
} catch {
    
}



func test() throws {
    print(try divide(50, 0))
}


// 可以使用try? try!调用可能会抛出Error的函数,这样就不用处理Error

var a = try?divide(20, 0)
var b: Int?
do {
    b = try divide(20, 0)
} catch {
    b = nil
}
// 上面a,b是等价的


// rethrows表明:函数本身不会抛出错误,但调用闭包参数抛出错误,那么它会将错误向上抛
func exec(_ fn: (Int, Int) throws -> Int, _ v1: Int, _ v2: Int) rethrows {
    print(try fn(v1, v2))
}

try exec(divide, 20, 0)



// defer语句:用来定义以任何方式(抛出异常,return等)离开代码块前必须要执行的代码
// defer语句将延迟至当前作用域结束之前执行
// 执行顺序与定义顺序相反
// 定义顺序fn1, fn2;执行顺序fn2, fn1


//: [Next](@next)
