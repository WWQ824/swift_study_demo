//: [Previous](@previous)

import Foundation






// 扩展协议
extension BinaryInteger {
    var isOdd: Bool {
        ((self & 1) != 0)
    }
}

print(11.isOdd)

// 协议
// 扩展可以给协议提供默认实现,也间接实现[可选协议]的效果
// 扩展可以给协议扩充[协议中从未声明过的方法],遵守协议的类可以可以调用此方法


// 泛型



//: [Next](@next)
