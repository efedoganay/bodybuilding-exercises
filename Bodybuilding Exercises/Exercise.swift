//
//  Exercise.swift
//  WorkoutAnatomy
//
//  Created by Fikret Efe Doğanay on 9.09.2023.
//

import Foundation
import UIKit

class Exercise: Decodable {
    let name: String
    let description: String
    let imageFileName: String
    let requiredEquipment: [String]?
    
    init(name: String, description: String, imageFileName: String, requiredEquipment: [String]?) {
        self.name = name
        self.description = description
        self.imageFileName = imageFileName
        self.requiredEquipment = requiredEquipment
    }
}
