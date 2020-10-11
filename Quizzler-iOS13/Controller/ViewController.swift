//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choiseOneButton: UIButton!
    @IBOutlet weak var choseTwoButton: UIButton!
    @IBOutlet weak var choiseThreeButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    
    var quizBrain = QuizBrain()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        scoreLabel.text = "Score : -"
        updateUI () 
    }
    
    

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle! // Button title : True or False

        let userGetItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGetItRight {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
    
        quizBrain.nextQuestion()
        
//    DispatchQueue.main.asyncAfter(deadline: .now()+0.5 ) {
//      updateUI()
//    } //or 
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector:#selector(updateUI), userInfo: nil, repeats: false)
    
    }
    
    @objc func updateUI () {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score : \(quizBrain.getScore() )"
        choiseOneButton.backgroundColor = UIColor.clear
        choseTwoButton.backgroundColor = UIColor.clear
        choiseThreeButton.backgroundColor = UIColor.clear

        
        choiseOneButton.setTitle(quizBrain.getQuestionAnswerOptions()[0], for: .normal)
        choseTwoButton.setTitle(quizBrain.getQuestionAnswerOptions()[1], for: .normal)
        choiseThreeButton.setTitle(quizBrain.getQuestionAnswerOptions()[2], for: .normal)
        questionLabel.text = quizBrain.getQuestionText()

        
        
    }
    

    
    
    }
    


