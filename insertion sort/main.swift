//
//  main.swift
//  insertion sort
//
//  Created by Chad Wiedemann on 10/20/16.
//  Copyright © 2016 Chad Wiedemann. All rights reserved.
//

import Foundation

var unsortedArray: NSMutableArray = NSMutableArray(array: [])

let methodStart1 = NSDate()
for i in 1...50{
    var random: Int = Int(arc4random_uniform(9)+1)
    unsortedArray.add(random)
}
let methodFinished1 = NSDate()
let executionTime1 = methodFinished1.timeIntervalSince(methodStart1 as Date)
print("\(unsortedArray.count) elements \n\(executionTime1) seconds ")

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
print("\(unsortedArray.count) elements \n\(executionTime) seconds ")

