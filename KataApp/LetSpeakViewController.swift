//
//  ViewController.swift
//  KataApp
//
//  Created by Trym Lintzen on 10-10-17.
//  Copyright © 2017 Trym. All rights reserved.
//

import UIKit

class LetSpeakViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var translationToLeet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    func toLeetSpeak(leetInput: String) -> String {
        
        var leetAlphabet: Dictionary<Character,String> = [
            "A" : "@",
            "B" : "8",
            "C" : "(",
            "D" : "D",
            "E" : "3",
            "F" : "F",
            "G" : "6",
            "H" : "#",
            "I" : "!",
            "J" : "J",
            "K" : "K",
            "L" : "1",
            "M" : "M",
            "N" : "N",
            "O" : "0",
            "P" : "P",
            "Q" : "Q",
            "R" : "R",
            "S" : "$",
            "T" : "7",
            "U" : "U",
            "V" : "V",
            "W" : "W",
            "X" : "X",
            "Y" : "Y",
            "Z" : "2"
        ]
        
        var leetWord = ""
        
        
        for letter in leetInput.characters {
            if let word = leetAlphabet[letter] {
                leetWord.append(word)
            } else {
                leetWord.append(letter)
            }
        }
        return leetWord
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        if let text = textField.text {
            translationToLeet.text =  toLeetSpeak(leetInput: text)
        }
        textField.resignFirstResponder()
        return true
      self.view.endEditing(true)
    }
    
    
    
}


