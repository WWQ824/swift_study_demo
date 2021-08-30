//: [Previous](@previous)

import Foundation



// 泛型 (Generics)
// 泛型可以将类型参数化,提高代码复用率,减少代码量
func swapValues<T>(_ v1: inout T, _ v2: inout T) {
    (v1, v2) = (v2, v1)
}

// 泛型函数赋值给变量
var fn: (inout Int, inout Int) -> () = swapValues


class Stack<T> {
    var elements = [T]()
    func push(_ element: T) {
        elements.append(element)
    }
    func pop() -> T {
        elements.removeLast()
    }
    func top() -> T {
        elements.last!
    }
    func size() -> Int {
        elements.count
    }
}

// 结构体
struct Stack1<E> {
    var elements = [E]()
    mutating func push(_ element: E) {
        elements.append(element)
    }
    mutating func pop() -> E {
        elements.removeLast()
    }
    func top() -> E {
        elements.last!
    }
    func size() -> Int {
        elements.count
    }
}

// 枚举
enum Score<T> {
    case point(T)
    case grade(String)
}

var score = Score<Int>.grade("A")


// 关联类型
protocol Stackable {
    // 关联类型
    associatedtype Element : Equatable
    mutating func push(_ element: Element)
    mutating func pop() -> Element
    func top() -> Element
    func size() -> Int
}

// 类型约束



//: [Next](@next)
