//
//  RandomValues.swift
//  Randomizer
//
//  Created by Кирилл Шалеников on 26.07.2023.
//

import Foundation

struct RandomNumber {
    var maximumValue: Int
    var minimumValue: Int
    
    var getRandom: Int {
        Int.random(in: minimumValue...maximumValue)
    }
}


