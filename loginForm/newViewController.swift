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
       
       
        
        
        
        let myRedColor = UIColor(
            red:1,
            green:0,
            blue:0,
            alpha:1)
        
        
         let sliderInt = Int(sender.value)
        let sliderFloat = Float(sender.value)
          let sliderCGFloat = CGFloat(sender.value)
        let sliderDouble = Double(sender.value)
        
        labelSliderOne.text = "\(sliderInt)"
        
        
        sender.minimumTrackTintColor = myRedColor
        
        print("Int: \(sliderInt)")
        print("Float: \(sliderFloat)")
         print("CGFloat: \(sliderCGFloat)")
        print("Double: \(sliderDouble)")
        
       
        
        
    }
  
    
   
    
    
}

