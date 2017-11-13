//
//  ViewController.swift
//  Quiz
//
//  Created by Zubair Zahiruddin on 1/20/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel : UILabel!
    
    let questions: [String] = [
        "What is 7+7 " ,
        "What is the capital of Mass ?",
        "When is the Big Day ?"
    
    ]
    
    let answers : [String] = [
        "14",
        "Boston",
        "in 2 Months"
    
    
    ]
    
    var currentQuestionIndex: Int = 0 ;
    
    
    
    
    @IBAction func showNextQuestion(_sender : UIButton){
        currentQuestionIndex = currentQuestionIndex + 1;
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0;
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
        
        
    }
    
    @IBAction func showAnswer(_sender : UIButton){
        let answer : String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }

   

}

