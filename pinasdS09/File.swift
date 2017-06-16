//
//  File.swift
//  pinasdS09
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class Bead01{
    var x = 10 //物件屬性
}
class Bead02{
    static var x1 = 12
    static var x2:Int? //類別屬性
    //static 變數只能與static變數作用
    static var x3:Int{
        return x1*100
    }
    var x4 = 123
    //x1有類別屬性及物件屬性可同時存在
    var x1 = 321
    init(){
        print(x4)
        //static 是類別的變數不能用物件來讀取需要用Bead01.x1讀取
        print(Bead02.x1)
        print(x1)

    }
}

class Bead03{
    var x = 100
    static var y = 200
    
    func f1(){
        x += 1
        //物件取static需要前面加類別名稱
        Bead03.f2()
        print("bead03:f1()")
    }
//    static 方法無法存取物件級別的的東西
    static func f2(){
//        x += 1
        y += 1
        f1()
    }
    //class func f1() = static func f1()
    static func f1(){
        print("bead03:static:f1()")
    }
    
}

class Bike{
    var speed:Int
    static var counter:Int = 0
    init(){
        self.speed = 0
        Bike.counter += 1
    }
    
}
//----------------------------

class Super1{
    init(){print("Super:init()")}
}
//單一繼承
class Sub11 : Super1{
    //沒有定義任何init,呼叫Super1.init
}

class Sub12 : Super1{
    override init(){
        print("sub12:init()")
    }
}

class Sub13 : Super1{
    init(_ :Int){
        
    }
}
//--------------------------------
class Super2{
    init(){print("Super2:init()")}
    init(_ :Int){print("Super2:init(Int)")}
    init(_ :Double){print("Super2:init(Double)")}
}

class Sub21 :Super2{
    
}

class Sub22 : Super2{
    override init(){
        super.init(1.0)
        print("Sub22:init()")
    }
    override init(_ :Int){
        super.init(3.0)
    }
    //Super2沒有init(_ :String) 不是override
    init(_ :String){
        super.init()
        print("123")
    }
}
//1.init() 一定有且在編譯時期就檢查
//2.init ->實做出物件因此在生成子物件時父物件也會存在

//-----------------------------

class Super3{
    init(){print("Super3:init()")}
}
class Sub31 : Super3{
    override init(){
        print("dosimething")
    }
    //convenience 若要調用其他的 init要加convenience的修飾詞,且父類別在調用的init調用,只能有一個init()=>這裡swift預設為父類別 init 因此只能調一個
    convenience init(_ :Int){
        print("Sub31:init(Int)")
        self.init()
    }
}

class TWId{
    private var gender:Bool
    private var area:Int
    private var id:String
    
    convenience init(){
        self.init(gender: arc4random() % 2 == 1 ? true : false, area:Int(arc4random() % 26) + 10)
    }
    convenience init(gender:Bool){
        self.init(gender: gender, area: Int(arc4random() % 26) + 10)
    }
    convenience init(area:Int){
        self.init(gender: arc4random() % 2 == 1 ? true : false, area: area)
    }
    init(gender:Bool,area:Int){
        self.gender = gender
        self.area = area<36 && area>9 ? area : Int(arc4random() % 26) + 10
        self.id = "A123456789"
    }
    //init? 若string為錯可以傳nil 其產生的物件為TWId:? 的型別
    init?(_ id:String){
        self.gender = true
        self.area = 12
        let a = Int(arc4random()%2)
        if a == 0 {
            return nil
        }else{
            self.id = id
        }
    }
}

//--------------------------------------

class Super4{
    init(){print("suoer4:init()")}
    //required 確保子類別一定有父類別的建構式 so 子類別也要寫required 以後世代都要
    required init(x:Int){print("suoer4:init(Int)")}
}

class Sub41 : Super4{
    override init(){
        super.init()
    }
    required init(x:Int){
        super.init()
    }
    init(x:Double){
        super.init()
    }
}
class Sub421 : Sub41{
    override init(){
        super.init()
    }
    required init(x:Int){
        super.init()
    }
    
    
}
























