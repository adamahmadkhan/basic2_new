//
//  CreateAccount.swift
//  basic2
//
//  Created by Adam Khan on 12/4/23.
//

import UIKit

class CreateAccount: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMySIM(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let getStartedController = storyBoard.instantiateViewController(withIdentifier: "getStartedID") as! GetStartedAccount
        
        self.navigationController?.pushViewController(getStartedController, animated:true)
        
    }
    
    @IBAction func orderSimClicked(_ sender: UIButton) {
        
        
        let ordersimController = storyboard?.instantiateViewController(identifier: "ordersimid") as! OrderSimViewController
        self.navigationController?.pushViewController(ordersimController, animated: true)
    }
    @IBAction func loginButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
