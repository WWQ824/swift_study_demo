//: [Previous](@previous)

import Foundation



// 引用计数的ARC内存管理方案(针对堆空间)
// Swift的ARC中有3中引用
// 1.强引用:默认情况下,引用都是强引用
// 2.弱引用:通过weak定义弱引用
// 必须是可选类型的var,因为实力销毁后,ARC会自动将弱引用设置为nil(不会触发属性观察器)
// 3.无主引用:通过unowned定义无主引用
// 不会产生强引用,实例销毁后仍然存储着实例的内存地址(类似于OC中的unsafe_unretained)
// 试图在实例销毁后访问无主引用,会产生运行时错误(野指针)

// weak,unownde只能用在类实例上面

// Autoreleasepool

// 循环引用
// weak,unownde都能解决循环引用的问题,unowned要比weak少一些性能消耗
// 生命周期中可能会变为nil的使用weak
// 初始化赋值后再也不会变nil的使用unowned


// 闭包的循环引用
// [weak self] in

// @escaping
// fn是非逃逸闭包
// func test(_ fn: ()->()){ fn() }
// fn是逃逸闭包
// var gFn: (() -> ())?
// func test1(_ fn: @escaping ()->()){ gFn = fn }
// fn是逃逸闭包
//func test1(_ fn: @escaping ()->()){
//    DispathQueue.global().async {
//        fn()
//    }
//}




var ptr = malloc(16)
// 存
ptr?.storeBytes(of: 11, as: Int.self)
ptr?.storeBytes(of: 11, as: Int.self)
// 取
ptr?.load(as: Int.self)
ptr?.load(fromByteOffset: 8, as: Int.self)

// 销毁
free(ptr)


var ptr1 = UnsafeMutableRawPointer.allocate(byteCount: 16, alignment: 1)
ptr1.storeBytes(of: 11, as: Int.self)
ptr1.advanced(by: 8).storeBytes(of: 22, as: Int.self)
// 指针间转换
var ptrTemp = ptr1.assumingMemoryBound(to: Int.self)

ptr1.deallocate()


var ptr2 = UnsafeMutablePointer<Int>.allocate(capacity: 3)
// 初始化
ptr2.initialize(to: 10)
ptr2.successor().initialize(to: 20)
ptr2.successor().successor().initialize(to: 30)
// 获取
ptr2.pointee // 10
(ptr2 + 1).pointee // 20
(ptr2 + 2).pointee // 30

ptr2.pointee // 10
ptr2.successor().pointee // 20
ptr2.successor().successor().pointee // 30

ptr2[0]
ptr2[1]
ptr2[2]


ptr2.deinitialize(count: 3)
ptr2.deallocate()
//: [Next](@next)
