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



//: [Next](@next)
