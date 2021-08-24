import UIKit
import PlaygroundSupport

/*: 常见数据类型
 1. 值类型:枚举,结构体
  
 2. 引用类型:类
 
 ![](dataType.png "Local image")
 
 */

// 常量,变量在初始化之前都不能使用

//let ageX: Int
//var height: Double
// 使用报错
//print(ageX)
//print(height)


// 定义变量
var a = 10
// 变量可以重新赋值
a = 100

// 定义常量,只能赋值一次
// 它的值不要求在编译时期确定, 但使用之前必须赋值1次
let age: Int
age = 24

let age1 = 14

// 下面是错误写法
//let b
//b = 200 // 常量不可以修改

// 变量字符串
var greeting = "Hello, playground"

// 打印 多个代码放一行需要加分号
print(a);print(age);print(age1)
// 打印字符串
print(greeting+"----\(a)")

// 显示UIView
let view = UIView()
view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
view.backgroundColor = UIColor.red
PlaygroundPage.current.liveView = view

// 显示图片
let imageView = UIImageView(image: UIImage(named: "emoji"))
PlaygroundPage.current.liveView = imageView

// 显示控制器
let vc = UITableViewController()
vc.view.backgroundColor = UIColor.orange
PlaygroundPage.current.liveView = vc

// 数组
let arr = [1, 2, 4, 5, 3]
// 字典
let dic = ["1":1, "2":2, "3":3]

Int.max
Int.min


if a > 10 {
    
} else if a > 20 {
    
} else {
    
}

var num = 5

while num > 0 {
    print("num is \(num)")
    num -= 1
}



repeat {
    print("111")
} while num > 0


let range = 1...3 // 1<=取值<=3
let m = 1
let n = 5
let margin = m...n
margin.contains(7)
margin.contains(4)


let str = "a"..."z"
let characterRange: ClosedRange<Character> = "\0"..."~"

// 可以不写break
// fallthrough贯穿case
// case default后至少有条语句 不写可以写break
switch a {
case 1, 2:
    print("1")
default:
    print("other")
}


let point = (1, 3)

switch point {
case (let x, 0):
    print(x)
default:
    break
}

func sum(v1: Int, v2: Int) -> Int { v1 + v2 }


func ca(v1: Int, v2: Int) -> (sum: Int, diff: Int, ave: Int) {
    let sum = v1 + v2
    return (sum, v1 - v2, sum >> 1)
}


// 参数标签
// 一个函数最多只能有一个可变参数
// 可变参数后面的标签不能省略

// print函数
print("1","2", separator: "\\", terminator: "===")


var value = 10
// 输入输出参数
// 不能有默认参数
func add(_  num: inout Int) {
    num = 20;
}

add(&value)

value

// 地址传递(引用传递)
func swpValues(_ v1: inout Int, _ v2: inout Int) {
    (v1, v2) = (v2, v1)
}
