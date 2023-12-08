//
//  PaymentMethodViewController.swift
//  basic2
//
//  Created by Adam Khan on 12/7/23.
//

import UIKit

class PaymentMethodViewController: UIViewController {

    @IBOutlet weak var subLabelOutlet1: UILabel!
    @IBOutlet weak var Label1Outlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Label1Outlet.text = "How would you like to \nbe charged?"

        subLabelOutlet1.text = "Select your preferred method of \npayment"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButtonClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func buttonApressed(_ sender: UIButton) {
        print("Button Pressed")
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
