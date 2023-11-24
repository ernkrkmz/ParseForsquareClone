//
//  ViewController.swift
//  Parse Fosquare
//
//  Created by Eren Korkmaz on 31.07.2023.
//

import UIKit
import Parse
class ViewController: UIViewController {

    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
//
//        let parseObject = PFObject(className: "Araba")
//        parseObject["marka"] = "Ferrari"
//        parseObject["model"] = "SF90"
//        parseObject["yil"]   = "2022"
//
//        parseObject.saveInBackground { bol, eror in
//            if bol {
//                print("saved !")
//            }
//            else {
//                print("else ")
//            }
//        }
        
//        let que = PFQuery(className: "Araba")
//        do{
//
//
//        }
//        catch {
//            print("hata catch")
//        }
        
        
    }

    
    @IBAction func LoginClicked(_ sender: Any) {
        
        if usernameText.text != "" && passwordText.text != "" {
            
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!) { user, eror in
                if user != nil {
                    self.performSegue(withIdentifier: "toHomeVC", sender: nil)
                }
                else {
                    
                }
            }
                
        }
        
    }
    
    @IBAction func RegisterClicked(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != "" {
            
            var user = PFUser()
            user.username = usernameText.text
            user.password = passwordText.text
            
            user.signUpInBackground { bol, eror in
                
                if eror != nil {
                    print(eror?.localizedDescription)
                    
                }
                else {
                    //segue yap
                    print("registered")
                }
                
            }
        }
    }
    
}

