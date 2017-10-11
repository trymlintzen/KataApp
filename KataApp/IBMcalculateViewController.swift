//
//  IBMcalculateViewController.swift
//  KataApp
//
//  Created by Trym Lintzen on 11-10-17.
//  Copyright © 2017 Trym. All rights reserved.
//

import UIKit

class IBMcalculateViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var IBMresultOutputLabel: UILabel!
    
    let numberToolbar: UIToolbar = UIToolbar.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        numberToolbar.items = [UIBarButtonItem.init(title: "next", style: .bordered, target: self, action: #selector(IBMcalculateViewController.next))]
//        numberToolbar.sizeToFit()
//
//        weightTextField.inputAccessoryView = numberToolbar
//        heightTextField.inputAccessoryView = numberToolbar
        // Do any additional setup after loading the view.
    }

//    func next(_ sender: Any) {
//        print("next", sender)
//    }
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

    func bmi(weight: Int,  height: Double) -> String {
        let bmiResult: Double = Double(weight) / (height * height)
        var trueResult: String = ""
        switch bmiResult {
        case _ where bmiResult <= 18.5:
            trueResult = "Underweight"
        case let tree where tree <= 25.0:
            trueResult = "Normal"
        case _ where bmiResult <= 30.0:
            trueResult = "Overweight"
        case _ where bmiResult > 30:
            trueResult = "Obese"
        default:
            break
        }
        return trueResult
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.tag == 1 {
           heightTextField.becomeFirstResponder()
        } else { //when tag is 1
            getValuesFromTextfields()
            textField.resignFirstResponder()
        }

        return true
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        self.view.endEditing(true)
       getValuesFromTextfields()
        
    }
    
    func getValuesFromTextfields() {
        if let weightString = weightTextField.text, let weightValue = Int(weightString),
            let heightString = heightTextField.text, let heightValue = Double(heightString){
            
            
            IBMresultOutputLabel.text = bmi(weight: weightValue, height: heightValue)
            
        }
    }
    
}
