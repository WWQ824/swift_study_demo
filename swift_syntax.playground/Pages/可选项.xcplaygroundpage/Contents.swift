//: [Previous](@previous)


// 可选项 一般也叫可选类型, 允许将值设置为nil
// 在类型名称后面加个问号?来定义一个可选项

var name: String? = "Jack"
name = nil

var age: Int?

age = 10
age = nil



func get(_ index: Int) -> Int? {
    if index < 0 || index > 5 {
        return nil;
    }
    return 20;
}


get(-1)
let a = get(2)
get(10)

// 不要强制解包
// 可选项绑定 可判断可选项是否包含值
// 若包含就自动解包 把值赋给一个临时常量let或者或者变量var 并返回true 否则返回false
if let number = Int("123") {
    print("字符串转换成整数成功:\(number)")
    // number是强制解包之后的Int值
    // number作用域仅限于这个大括号
} else {
    print("字符串转换成整数失败")
}


// 空合并运算符 ??
// ?? 左边要是可选项
// ?? 右边跟左边的存储类型必须相同
// 返回值看??右边的是否是可选项
//let a: Int? = 1
//let b: Int? = 2
//let c = a ?? b // c是Int? optional(1)


//let a: Int? = nil
//let b: Int? = 2
//let c = a ?? b // c是Int? optional(2)


//let a: Int? = nil
//let b: Int? = nil
//let c = a ?? b // c是Int? nil


//let a: Int? = 1
//let b: Int = 2
//let c = a ?? b // c是Int 1

//let a: Int? = nil
//let b: Int = 2
//let c = a ?? b // c是Int 2

// 多个??在一起使用
//let a: Int? = 1
//let b: Int? = 2
//let c = a ?? b ?? 3 // c是Int 1

//let a: Int? = nil
//let b: Int? = 2
//let c = a ?? b ?? 3 // c是Int 2

//let a: Int? = nil
//let b: Int? = nil
//let c = a ?? b ?? 3 // c是Int 3


// ??跟if let配合使用

//let a: Int? = nil
//let b: Int? = 2
//if let c = a ?? b {
// print(c)
//}



// guard语句
//guard let value  =  dict["111"] else {
//    print("2222")
//    return
//}
// 当guard语句的条件为false时, 就会执行大括号里的语句,直接退出 不会执行gurad括号后面的语句


var dict = ["111":"222"]


func login(_ info: [String : String]) {
    guard let value  =  dict["111"] else {
        print("333333")
        return
    }

    print(value)
}

login(dict)




// 隐式解包(开发中不建议使用)
let x: Int! = 10
let y: Int = x

// 字符串插值
var v: Int? = 10
// 消除警告
print("v = \(v!)")
print("v = \(v ?? 0)")
print("v = \(String(describing: v))")



// 多重可选项
var v1: Int? = 10
var v2: Int?? = v1
var v3: Int?? = 10

v2 == v3 // ture

var T1: Int? = nil
var T2: Int?? = T1
var T3: Int?? = nil

T2 == T3 // false
T1 == T3 // false 类型都不一样

(T2 ?? 1) ?? 2 // 2
(T3 ?? 1) ?? 2 // 1


//: [Next](@next)
