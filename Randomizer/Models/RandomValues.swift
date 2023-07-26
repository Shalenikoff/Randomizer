//
//  RandomValues.swift
//  Randomizer
//
//  Created by Кирилл Шалеников on 26.07.2023.
//

import Foundation

struct RandomNumber {
    let maximumValue: Int
    let minimumValue: Int
    
    var getRandom: Int {
        Int.random(in: maximumValue...minimumValue)
    }
}


