//
//  newViewController.swift
//  loginForm
//
//  Created by Patrik  on 3/20/16.
//  Copyright © 2016 Xinja. All rights reserved.
//

import UIKit

class newViewController: UIViewController {
    
    @IBOutlet weak var loadNSUserDefaults: UILabel!
    
    
    
    
    
    
   

    @IBOutlet weak var labelSliderOne: UILabel!
    
      
    
   
    @IBAction func valueChangeEnded(sender: UISlider) {
        print("save to user defaults")
        NSUserDefaults.standardUserDefaults().setFloat(sender.value, forKey: "slider_value")
            }
    
    
    
    
   
    
    

    
    
    @IBOutlet weak var loadLabel: UILabel!
    
  
    
    
    @IBAction func sliderOne(sender: UISlider) {
       
        
      
        
        let sliderInt = Int(sender.value)
        let sliderFloat = Float(sender.value)
        let sliderCGFloat = CGFloat(sender.value)
        let sliderDouble = Double(sender.value)
       
        //SAVE SUSERDEFAULTS
        NSUserDefaults.standardUserDefaults().setFloat(sliderFloat, forKey: "slider_value")
        
        
        let myRedColor = UIColor(
            red:CGFloat(sender.value),
            green:0,
            blue:0,
            alpha:1)
        
      
      
        
        
        labelSliderOne.text = "\(sliderInt)%"
        
        
        
        sender.minimumTrackTintColor = myRedColor
        
        print("SenderValueConvert: \(CGFloat(sender.value)*2)")
        print("Int: \(sliderInt)")
        print("Float: \(sliderFloat)")
        print("CGFloat: \(sliderCGFloat)")
        print("Double: \(sliderDouble)")
        
        
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //LOAD USERDEFAULTS
        let sliderValue = NSUserDefaults.standardUserDefaults().floatForKey("slider_value") //LOAD NSUserDefaults
        
        
        let sliderValueConvert = Int(sliderValue)
        
        
        labelSliderOne.text = "\(sliderValueConvert)"
        
        loadNSUserDefaults.text = "Brännbart:  \(sliderValueConvert)"
        
        
        
    }
    
    
    
    
    
}

