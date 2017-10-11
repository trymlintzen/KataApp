//
//  ToNatoViewController.swift
//  KataApp
//
//  Created by Trym Lintzen on 10-10-17.
//  Copyright © 2017 Trym. All rights reserved.
//

import UIKit

class ToNatoViewController: UIViewController {
    @IBOutlet weak var InputNato: UITextView!

    @IBOutlet weak var TranslationNato: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    func toNato(aSetence: String) -> String {
        
        
        //    var stringToConvert = "go for it!"
        
        // dictionary with Key as Character type, and value is of type String
        var natoAlphabet: Dictionary<Character, String> = ["a": "Alfa", "b": "Bravo", "c" : "Charlie", "d" : "Delta",
                                                           "e": "Echo", "f": "Foxtrot", "g": "Golf", "h": "Hotel",
                                                           "i": "India", "j": "Juliet", "k": "Kilo", "l": "Lima",
                                                           "m": "Mike", "n": "November", "o": "Oscar", "p": "Papa",
                                                           "q": "Quebec", "r": "Romeo", "s": "Sierra", "t": "Tango",
                                                           "u": "Uniform", "v": "Victor", "w": "Whiskey", "x": "Xray",
                                                           "y": "Yankee", "z": "Zulu"]
        // maak empty string
        var result: String = ""
        
        // Put all letters in the string to a lowercase, so that it matches keys in our dictionary
        let lowercasedASetence = aSetence.lowercased()
        
        // for loop to loop through everey character in our string that we want to convert
        for char in lowercasedASetence.characters {
            
            // optional bindingc chekcing that we can get a value from our dictonary with the key "letter", which is the current character in the string that we are looping through
            if let word = natoAlphabet[char] {
                // we are then going to append the wordt to return or our string with the retrieved value form our dictionary
                result.append("\(word) ")  // "\(word) " example of string interpoltation, allowing
                
                
            } else {
                result.append(char)
                
            }
            
        }
        
        //    print(result)
        return deleteSpace(newSetence: result)
    }
    
    func deleteSpace (newSetence: String) -> String {
        let components = newSetence.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.joined(separator: " ")
    }
    
//    toNato(aSetence:  "go for it!")
//    toNato(aSetence:  "My name      is Trym")

    
 
    @IBAction func NatoButton(_ sender: Any) {
        
        TranslationNato.text = toNato(aSetence: InputNato.text)
          self.view.endEditing(true)
    }
    
    
}
