//
//  ViewController.swift
//  userDatabaseTest1
//
//  Created by Patrik  on 3/19/16.
//  Copyright © 2016 Xinja. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
  
  
    
    
    
    
    
    @IBOutlet weak var textFieldUser: UITextField!
 
    @IBOutlet weak var textFieldPass: UITextField!

    
        
    @IBOutlet weak var userNameCheckOkFail: UIImageView!
    
    @IBOutlet weak var passwordCheckOkFail: UIImageView!
    
    
    
   
  

//Create Class
    class users {
        var userName:String
        var password:String
        
        
        var realName:String
        var email:String
        var adress:String?
        var city:String
        var country:String
        
        init(userName:String,password:String,realName:String,email:String,
            adress:String? = nil,city:String,country:String){
                
                self.userName = userName
                self.password = password
                self.realName = realName
                self.email = email
                self.adress = adress
                self.city = city
                self.country = country
                
        }
        
    }
    
//Create Object
    var personOne = users(userName: "itzhyxithyl", password: "qplazm123", realName: "Patrik Karlsson", email: "patrik.gpost@gmail.com", adress: "Aspevägen 2", city: "Hyppeln", country: "Sweden")
    
//Load in image string in a variable
    let checkOk = UIImage(named: "checkOk1.jpg")
    let crossFail = UIImage(named: "crossFail1.jpg")
    
//Button
   

    
    
    
    
    
    
    @IBAction func login(sender: AnyObject) {
    
        if textFieldUser.text == personOne.userName{
            
            //Display image if username is OK or FAIL!
            userNameCheckOkFail.image = checkOk
            
        }
        else{
            userNameCheckOkFail.image = crossFail
            
        }
       
        //Display image if username is OK or FAIL
        if textFieldPass.text == personOne.password
        {
           passwordCheckOkFail.image = checkOk
           
        }
        else{
            passwordCheckOkFail.image = crossFail
          
        }
        

        
    
    
    }
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 

}

