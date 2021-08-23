import UIKit
import PlaygroundSupport

/*: 常见数据类型
 
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
