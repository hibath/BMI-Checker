//
//  ViewController.swift
//  BMI-Checker
//
//  Created by Heba Thabet Agha on 06.04.22.
//

import UIKit

class CalculatingViewController: UIViewController {

    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var bmiBrain = BMIBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: Any) {
        let height = String(format: "%.2f", heightSlider.value)
         heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: Any) {
        let weight = String(format: "%.0f", weightSlider.value)
         weightLabel.text = "\(weight)kg"
    }
    
    
    @IBAction func calculateBMI(_ sender: Any) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        bmiBrain.calculateBMI(height: height, weight: weight)
        
        
        //this segue is responsible for intinallizing Result view controller so no need to init it manually
        self.performSegue(withIdentifier: "showResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "showResult") {
            
            //we are overriding this "prepare for segue" method, 
        let destination = segue.destination  as! ResultViewController
            destination.bmiValue = bmiBrain.getBMIValue()
            destination.advice = bmiBrain.getAdvice()
        }
        
    }
    
}

