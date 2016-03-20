//
//  newViewController.swift
//  loginForm
//
//  Created by Patrik  on 3/20/16.
//  Copyright © 2016 Xinja. All rights reserved.
//

import UIKit

class newViewController: UIViewController {


    @IBOutlet weak var labelSliderOne: UILabel!
    
    @IBAction func sliderOne(sender: UISlider) {
       
       
        let sliderInt = Int(sender.value*100)
        let sliderFloat = Float(sender.value)
        let sliderCGFloat = CGFloat(sender.value)
        let sliderDouble = Double(sender.value)
       
        
        
        let myRedColor = UIColor(
            red:CGFloat(sender.value),
            green:0,
            blue:0,
            alpha:1)
        
        
      
        
        labelSliderOne.text = "\(sliderInt)"
        
        
        
        sender.minimumTrackTintColor = myRedColor
        
        print("SenderValueConvert: \(CGFloat(sender.value)*2)")
        print("Int: \(sliderInt)")
        print("Float: \(sliderFloat)")
        print("CGFloat: \(sliderCGFloat)")
        print("Double: \(sliderDouble)")
        
        
        
    }
  
    
   
    
    
}

