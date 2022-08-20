//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Nikita  on 8/18/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let questionText: String
    var questionAnswer: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String){
        questionText = q
        questionAnswer = a
        self.correctAnswer = correctAnswer
    }
}
