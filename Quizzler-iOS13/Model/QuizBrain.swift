//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Radhi Mighri on 5/14/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation



struct QuizBrain {
    let quiz = [
               Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
               Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
               Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
               Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
               Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
               Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
               Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
               Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
               Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
               Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]
    
    var questionNumber = 0
    var score = 0

    
//    func checkAnswer(answer userAnswer: String){
//
//    }
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].correct { //User got it right
            score += 1
            return true
        }
        else{ //User got it wrong
            return false
        }
  }
    
    
     func getScore() -> Int{
            return score
          }

    
      func getQuestionText() -> String{
        return quiz[questionNumber].text
      }
    
    
      func getQuestionAnswerOptions() -> [String]{
        return quiz[questionNumber].answer
      }
    

    func getProgress() -> Float{
           let percentageProgress = Float(questionNumber+1) / Float(quiz.count)

          return percentageProgress
        
        }
    
    mutating func nextQuestion()  {
        if (questionNumber+1<quiz.count){
            questionNumber += 1
        }else{ // if questionNumber==quiz.count : restarting our quiz
            questionNumber = 0
            score = 0
            
        }
    }
    


    
    
}
