//: [Previous](@previous)


// 枚举的基本用法
enum Direction {
    case north
    case south
    case east
    case west
}

// 关联值 可以自己传值
enum Score {
    case points(Int)
    case grade(Character)
}

var score = Score.points(96)
score = .grade("A")

enum Date {
    case digit(y: Int, m: Int, d: Int)
    case string(String)
}

var date = Date.digit(y: 2021, m: 8, d: 20)
date = .string("2021-8-23")


// 原始值 固定的 后面不可以改
enum PS : Character {
    case s = "s"
    case h = "h"
    case d = "d"
    case c = "c"
}

var ps = PS.s
print(ps)
print(ps.rawValue)


// 隐式原始值
enum DirectionX : String {
    case north = "north"
    case south = "south"
    case east = "east"
    case west = "west"
}

print(DirectionX.north.rawValue)


// 递归枚举
indirect enum AE {
    case number(Int)
    case sum(AE, AE)
    case diff(AE, AE)
}

enum AEX {
    case number(Int)
    indirect case sum(AE, AE)
    indirect case diff(AE, AE)
}


// MemoryLayout 获取数据类型占多少内存

var age = 20

MemoryLayout<Int>.size // 实际使用到的空间大小
MemoryLayout<Int>.stride // 分配占用的空间大小
MemoryLayout<Int>.alignment // 对齐参数
MemoryLayout.size(ofValue: age)

enum Password {
    case number(Int, Int, Int, Int)
    case other
}


var pwd = Password.number(8, 9, 10, 11)
MemoryLayout.size(ofValue: pwd)
pwd = .other;
MemoryLayout.size(ofValue: pwd)


// 原始值 关联值 区别

MemoryLayout<Password>.size // 32 实际使用到的空间大小
MemoryLayout<Password>.stride // 40 分配占用的空间大小
MemoryLayout<Password>.alignment // 8 对齐参数


var pwd2 = Password.other
MemoryLayout.size(ofValue: pwd)
pwd2 = .number(8, 9, 10, 11);
MemoryLayout.size(ofValue: pwd)


MemoryLayout<Direction>.size // 1 实际使用到的空间大小
MemoryLayout<Direction>.stride // 1 分配占用的空间大小
MemoryLayout<Direction>.alignment // 1 对齐参数


MemoryLayout<DirectionX>.size // 1 实际使用到的空间大小
MemoryLayout<DirectionX>.stride // 1 分配占用的空间大小
MemoryLayout<DirectionX>.alignment // 1 对齐参数

//: [Next](@next)
