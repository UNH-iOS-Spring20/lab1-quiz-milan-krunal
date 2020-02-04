//
//  ViewController.swift
//  Quiz_app
//
//  Created by Krunal Mistry on 1/30/20.
//  Copyright © 2020 Krunal Mistry. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    let questions: [String] = [
    "what is UNH?",
    "what is CS?",
    "what is iOS"
    ]
    
    let answers: [String] = [
    "University of New Haven",
    "Computer Science",
    "iPhone Operating System"
    ]
    
    var currentQuestionIndex: Int = 0
    @IBAction func showNextQuestion(_ sender:UIButton){
        os_log("Showing next question")
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender:UIButton){
        os_log("showing answer")
        let answer : String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded")
        questionLabel.text = questions[currentQuestionIndex]
        
    }
}


