//
//  TranslationsViewController.swift
//  KataApp
//
//  Created by Trym Lintzen on 10-10-17.
//  Copyright © 2017 Trym. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {
    @IBOutlet weak var textViewInput: UITextView!
    @IBOutlet weak var translationOutput: UITextView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var translationHelper: Translations = Translations.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        translationHelper = Translations.init()
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

    @IBAction func translate(_ sender:Any){
        var translation = ""
        switch segmentControl.selectedSegmentIndex {
        case 0:
//            translation = translationHelper.toLeetSpeak(leetInput: textViewInput.text ?? "")

            if let text = textViewInput.text {
                translation = translationHelper.toLeetSpeak(leetInput: text)
                
            }
            self.view.endEditing(true)
            
            
        case 1:
            translation = translationHelper.toNato(aSetence: textViewInput.text)
            self.view.endEditing(true)
        case 2:
            translation = translationHelper.disemVow(giveASetence: textViewInput.text)
            self.view.endEditing(true)
        default:
            break
        }
        translationOutput.text = translation
    }
    @IBAction func SegmentViewController(_ sender: Any) {
        if let segment = sender as? UISegmentedControl {


        }
        
    }
    
}


