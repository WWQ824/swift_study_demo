//: [Previous](@previous)

/*:  闭包
 
 {
    (参数列表) -> 返回值类型 in
    函数体代码
 }
 
 func sum(_ v1: Int, _ v2: Int) -> Int {  v1 + v2  }

 var fn = { (v1: Int, v2: Int) -> Int in return v1 + v2 }

 fn(10, 20)

 { (v1: Int, v2: Int) -> Int in return v1 + v2 }(11, 21)
 
 闭包表达式的简写
 exec(v1: 10, v2: 20, fn: { $0 + $1 })
 exec(v1: 10, v2: 20, fn:  + )

 尾随闭包
 最后一个实参
 exec(v1: 10, v2: 20) { $0 + $1 }
 唯一实参
 exec() { $0 + $1 }
 exec { $0 + $1 }
 
 忽略掉参数使用_ 默认返回10
 exec { _, _ in 10 }

 */


typealias Fn = (Int) -> Int

func getFn() -> Fn {
    var num = 0
    return {
        num += $0 // num会被捕获到堆上 24个字节
        return num
    }
}

let fn = getFn()
print(fn(1))
print(fn(2))
print(fn(3))



var arr = [1, 40, 5, 50, 20]
arr.sort(by: { n1, n2 in return n1 < n2 })
arr.sort { n1, n2 in return n1 < n2 }
arr.sort { n1, n2 in n1 < n2 }
arr.sort(by: { $0 > $1 })
arr.sort(by: <)
arr.sort(){ $0 > $1 }
arr.sort { $0 > $1 }

print(arr)


// 自动闭包表达式
func getNumber(_ v1: Int, _ v2: @autoclosure () -> Int) -> Int {
    return v1 > 0 ? v1 : v2()
}

// @autoclosure 会自动将20封装成闭包{20}
// @autoclosure 只支持() -> T格式的参数
// @autoclosure 并非只支持最后1个参数
// ?? 使用了@autoclosure技术
// 有无@autoclosure 函数会构成重载
// 有@autoclosure建议注释标明:这个值会推迟执行
getNumber(10, 20)
//getNumber(10){20}










//: [Next](@next)
