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
       
        var rgbColor:Int
        
        let sliderValue = lroundf(sender.value)
        labelSliderOne.text = "\(sliderValue)"
        
       
        
        rgbColor = lroundf(sender.value)
        
        print("RGBvalue: \(rgbColor)")
        
    }
  
    
   
    
    
}

