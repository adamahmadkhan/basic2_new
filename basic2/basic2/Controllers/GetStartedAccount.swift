//
//  GetStartedAccount.swift
//  basic2
//
//  Created by Adam Khan on 12/4/23.
//

import UIKit

class GetStartedAccount: UIViewController,UITextFieldDelegate  {

    
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var label1Outlet: UILabel!
    
    @IBOutlet weak var phoneNumberTextfieldOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberTextfieldOutlet.delegate = self
       label1Outlet.text = "Create a Account By providing Us \n following details"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButtonClicked(_ sender: UIButton) {
       
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func checkBOX(_ sender: Any) {
        
        checkBoxOutlet.isSelected = !checkBoxOutlet.isSelected
    }
    
    
    
    @IBAction func loginHereButtonclick(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //For numers
        if textField == phoneNumberTextfieldOutlet {
            let allowedCharacters = CharacterSet(charactersIn:"0123456789")//Here change this characters based on your requirement
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        return true
    }
    /*@IBAction func LogInhere(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    */
    /*
     
    
     
     @IBAction func logininButtonclick(_ sender: UIButton) {
     }
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
