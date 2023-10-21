//
//  BodyPart.swift
//  WorkoutAnatomy
//
//  Created by Fikret Efe Doğanay on 9.09.2023.
//

import Foundation
import UIKit

class BodyPart: Decodable {
    let name: String
    let imageFileName: String
    let exercises: [Exercise]
    
    
    init(name: String, imageFileName: String, exercises: [Exercise]) {
        self.name = name
        self.imageFileName = imageFileName
        self.exercises = exercises
    }
}
