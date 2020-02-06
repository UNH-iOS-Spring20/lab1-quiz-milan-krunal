//
//  ViewController.swift
//  Quiz-lab
//
//  Created by Milan-Krunal on 05/02/20.
//  Copyright © 2020 Milan-Krunal. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    let questions: [String]  = [
    "What is 7+7?",
    "What is the Capital of Vermont?",
    "What is Cognac made of?"
    ]
    
    let answers: [String] = [
    "14",
    "Montpelier",
    "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        os_log("Showing next question")
        currentQuestionIndex+=1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        os_log("Showing Answer")
        let answer = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I Just Loaded")
        questionLabel.text = questions[currentQuestionIndex]

    }

}

