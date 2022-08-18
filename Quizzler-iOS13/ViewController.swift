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
    
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    let quiz = [Question(questionText: "Four + Two is equal to Six. ", questionAnswer: "True"), Question(questionText: "Five - Three is greater than One", questionAnswer: "True"), Question(questionText: "Three + Eight is less than Ten", questionAnswer: "False")]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnser = quiz[questionNumber].questionAnswer
        
        
        if userAnswer == actualAnser{
            print("Right!")
        }
        else {
            print("Wrong!")
        }
        
        if quiz.count - 1 != questionNumber{
            questionNumber += 1
            updateUI()
        }
        else {
            questionNumber = 0
            updateUI()
        }
      
    }
    
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber].questionText
        
    }
    


}




