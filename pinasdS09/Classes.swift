//
//  Classes.swift
//  pinasdS09
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

class MyClass01{
    
}

class MyClass02{
    var x:Int
    init(x:Int){
        self.x = x
    }
}

class MyClass03{
    var x = 123
}

class MyClass04{
    var x:Int?
}
//--------------------
class MyClass05{
    var x:Int{
        get{
            return 1
        }
        set{
            //newValue
            
        }
    }
}
class MyClass06{
    //== let x=2
    var x:Int{
        return 1
    }
    var y = 123
    //計算型屬性
    var z:Int{
        return y*y
    }
}
//-------------------------

class MyClass07{
    var x = 0{
        willSet{
            //newValue
        }
        didSet{
            
        }
    }
}





















