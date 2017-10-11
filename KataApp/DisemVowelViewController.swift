//
//  DisemVowelViewController.swift
//  KataApp
//
//  Created by Trym Lintzen on 10-10-17.
//  Copyright © 2017 Trym. All rights reserved.
//

import UIKit

class DisemVowelViewController: UIViewController {
    @IBOutlet weak var InputDisemVowel: UITextView!
    
    @IBOutlet weak var TranslationDisemVowel: UITextView!
    
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

    
    func disemVow (giveASetence sentence: String) -> String {
        //    var sentence = "Hello how are you"
        var disemVowelWorld = ""
        for letter in sentence {
            switch letter {
            case "a", "A", "e", "E", "i", "I", "o", "O", "u", "U" :
                break
            default:
                disemVowelWorld.append(letter)
            }
            //        print(disemVowelWorld)
            
        }
        return (disemVowelWorld)
    }
    
//    disemVow(giveASetence: "Hello world")
    
    @IBAction func disemVowelButton(_ sender: Any) {
        TranslationDisemVowel.text = disemVow(giveASetence: InputDisemVowel.text)
        self.view.endEditing(true)
    }
    
    
    
}
