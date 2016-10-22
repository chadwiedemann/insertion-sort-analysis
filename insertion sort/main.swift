//
//  main.swift
//  insertion sort
//
//  Created by Chad Wiedemann on 10/20/16.
//  Copyright © 2016 Chad Wiedemann. All rights reserved.
//

import Foundation


var CSVStringTotal: String = ""
var unsortedArray: NSMutableArray = NSMutableArray(array: [])
let title: String = String("elements, n, nsquared\n")
CSVStringTotal.append(title)
for i in 1...7{
    var elements: Int = 0

    if i == 1{
        elements = 2
    }else if i == 2{
        elements = 10
    }else if i==3{
        elements = 50
    }else if i==4{
        elements = 100
    }else if i==5{
        elements = 150
    }else if i == 6{
        elements = 300
    }else if i == 7{
        elements = 1000
    }

unsortedArray.removeAllObjects()
let methodStart1 = NSDate()
for i in 1...elements{
    let random: Int = Int(arc4random_uniform(9)+1)
    unsortedArray.add(random)
}
let methodFinished1 = NSDate()
let executionTime1 = methodFinished1.timeIntervalSince(methodStart1 as Date)
var s1 = String("\(unsortedArray.count),")
var s2 = String("\(executionTime1),")

let methodStart = NSDate()
for j in 1...unsortedArray.count-1{
    var valueSorting: Int = unsortedArray[j] as! Int
    var i = 0
    i = j - 1
    while i >= 0 && unsortedArray[i] as! Int > valueSorting  {
        unsortedArray[i + 1] = unsortedArray[i]
        i = i - 1
    }
    unsortedArray[i + 1] = valueSorting
}
let methodFinished = NSDate()
let executionTime = methodFinished.timeIntervalSince(methodStart as Date)
var s3 = String("\(executionTime)")
var CSVString = String("\(s1!)\(s2!)\(s3!)\n")
CSVStringTotal.append(CSVString!)
}
print(CSVStringTotal)
