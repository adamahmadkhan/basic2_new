//
//  ViewController.swift
//  basic2
//
//  Created by Adam Khan on 12/1/23.
//

import UIKit

class WelcomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func createAccountClicked(_ sender: UIButton) {
        
        let createAccountController = storyboard?.instantiateViewController(withIdentifier: "createAccountID") as! CreateAccount
        
        self.navigationController?.pushViewController(createAccountController, animated:true)
    }
    
    @IBAction func resetItButtonClicked(_ sender: Any) {
        let RecovercontrollerController = storyboard?.instantiateViewController(identifier: "RecovercontrollerID") as! RecoverViewController
        self.navigationController?.pushViewController(RecovercontrollerController, animated: true)
    }
    
    
    @IBAction func loginButtob(_ sender: Any) {
        let verificationController = storyboard?.instantiateViewController(identifier: "verficationID") as! VerifyViewController
        self.navigationController?.pushViewController(verificationController, animated: true)
    }
    
}

