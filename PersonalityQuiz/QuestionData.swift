//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by admin on 5/27/20.
//  Copyright © 2020 Khanhdepgai. All rights reserved.
//

import Foundation
struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}
struct Category {
    var name:String
    var id:Int
    var question:[Question]
}

enum AnimalType: Character {
    case pig = "🐷", panda = "🐼", octopus = "🐙", hedgehog = "🦔"
    var definition: String {
        switch self {
        case .pig:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .panda:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .octopus:
            return "You love everything that's soft. You are healthy and full of energy."
        case .hedgehog:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}
