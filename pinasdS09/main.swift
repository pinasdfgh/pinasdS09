//
//  main.swift
//  pinasdS09
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

var obj1 = Bead01()

print(obj1.x)

print(Bead02.x1)
var obj2 = Bead02()

Bead03.f2()

var B1 = Bike()
var B2 = Bike()
var B3 = Bike()

print(Bike.counter)


var obj3 = Super1()
var obj4 = Sub11()
var obj5 = Sub12()
var obj6 = Sub13(1)
print("------------------------")
var obj7 = Sub21()
var obj8 = Sub22("123")
print("------------------------")
var obj9 = Sub31(1)
var obja = Sub41()
var objb = Sub41(x:1)



var myid = TWId("A123456789")
print(type(of:myid))
if myid == nil{
    print("XX")
}else{
    print("OK")
}

























