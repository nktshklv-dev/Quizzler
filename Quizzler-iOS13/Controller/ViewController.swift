//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    @IBOutlet var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressBar.progress = quizBrain.getProgress()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
      
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        
        if userGotItRight{
            sender.backgroundColor = UIColor.systemGreen
        }
        else {
            sender.backgroundColor = UIColor.systemRed
        }
        
        quizBrain.nextQuestion()
      
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionTitle()
        let title1 = quizBrain.quiz[quizBrain.questionNumber].questionAnswer[0]
        let title2 = quizBrain.quiz[quizBrain.questionNumber].questionAnswer[1]
        let title3 = quizBrain.quiz[quizBrain.questionNumber].questionAnswer[2]
        print(title3)
        firstButton.setTitle(title1, for: .normal)
        secondButton.setTitle(title2, for: .normal)
        thirdButton.setTitle(title3, for: .normal)
        secondButton.backgroundColor = .clear
        firstButton.backgroundColor = .clear
        thirdButton.backgroundColor = .clear
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        progressBar.progress = quizBrain.getProgress()
  }
}




