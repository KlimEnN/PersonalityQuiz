//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Андрей Клименко on 19.09.2021.
//

import Foundation

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
   
    
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "Что вы кушаете?",
                type: .single,
                answers: [
                    Answer(title: "Мясо", animal: .cat),
                    Answer(title: "Колбасу", animal: .dog),
                    Answer(title: "Хлеб", animal: .rabbit),
                    Answer(title: "Морковку", animal: .turtle)
                ]
               
            ),
            Question(
                title: "Что вы пьете?",
                type: .multiple,
                answers: [
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Есть", animal: .dog),
                    Answer(title: "Пить", animal: .rabbit),
                    Answer(title: "Купаться", animal: .turtle)
                ]
            ),
            Question(
                title: "Какая у вас машина?",
                type: .ranged,
                answers: [
                    Answer(title: "0", animal: .cat),
                    Answer(title: "0.25", animal: .dog),
                    Answer(title: "0.5", animal: .rabbit),
                    Answer(title: "1", animal: .turtle)
                ]
                
            ),
            
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🦊"
    case rabbit = "🐧"
    case turtle = "🙉"
    
    var definition: String {
        switch self {
        
        case .dog:
            return "Ну ты собака"
        case .cat:
            return "Ну ты кот"
        case .rabbit:
            return "Как кролик"
        case .turtle:
            return "Медленный как черепаха"
        }
    }
}
