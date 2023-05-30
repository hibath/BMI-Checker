//
//  ResultViewController.swift
//  BMI-Checker
//
//  Created by Heba Thabet Agha on 06.04.22.
//


import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var advice : String?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    
    @IBAction func recalculatePressed(_ sender: Any) {
        //so it dismiss this viewcontroller and go back to the first
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLable.text = bmiValue
        adviceLable.text = advice
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

