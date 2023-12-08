//
//  VerifyViewController.swift
//  basic2
//
//  Created by Adam Khan on 12/5/23.
//

import UIKit

class VerifyViewController: UIViewController {

    @IBOutlet weak var labeloutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labeloutlet.text = "Please enter the code to\n verify your account"
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButtonCLicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func verifyButton(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "HomeScreenboard", bundle: nil)
        let getStartedController = storyBoard.instantiateViewController(withIdentifier: "tabbarID") as! UITabBarController
        
        self.navigationController?.pushViewController(getStartedController, animated:true)
        
    }
    /*
    @IBAction func continueButtonClicked(_ sender: Any) {
        
        
        let HomePageController = storyboard?.instantiateViewController(withIdentifier: "HomePageID") as! HomeViewController
        
        
        self.navigationController?.pushViewController(HomePageController, animated:true)
    }
     */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
