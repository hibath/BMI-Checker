//
//  BMIBrain.swift
//  BMI-Checker
//
//  Created by Heba Thabet Agha on 06.04.22.
//

import UIKit

struct BMIBrain {
    
    // value should be initilized here or when creating an objet in case it's not optional
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue,  advice: "you need to eat more!")
        }
        else if bmiValue < 24.9
        {
            bmi = BMI(value: bmiValue,  advice: "Just Perfect! keep it like that")
        }
        else
        {
            bmi = BMI(value: bmiValue,  advice: "stop Eating please!")
        }
    }
    
    
    func getBMIValue()->String {
        let stringBMI = String(format:"%.1F" , bmi?.value ?? 0.0)
        return stringBMI
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? ""
    }
    
}
