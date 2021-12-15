//
//  ViewController.swift
//  GitHubHomework
//
//  Created by ozgun on 15.12.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var heightLabel: UITextField!
    @IBOutlet weak var weightLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightLabel.delegate = self
        weightLabel.delegate = self
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        weightLabel.endEditing(true)
        heightLabel.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        weightLabel.endEditing(true)
        heightLabel.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if weightLabel.text != "" && heightLabel.text != "" {
            return true
        }else{
            return true
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("end text")
    }
}

