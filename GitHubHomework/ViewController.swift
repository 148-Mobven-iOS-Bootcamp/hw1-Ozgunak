//
//  ViewController.swift
//  GitHubHomework
//
//  Created by ozgun on 15.12.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func WSlider(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    @IBAction func HSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight / (height * height)
        print(BMI)
        bmiLabel.text = String(format: "%.1f", BMI)
    }
    
}

