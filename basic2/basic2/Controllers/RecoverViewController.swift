//
//  RecoverViewController.swift
//  basic2
//
//  Created by Adam Khan on 12/5/23.
//

import UIKit

class RecoverViewController: UIViewController {
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    //@IBOutlet weak var label1Outet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelOutlet.text = "Enter the Email you used to register \n with us"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func continueButtonClicked(_ sender: Any) {
        /*
        let storyBoard = UIStoryboard(name: "HomeStoryboard", bundle: nil)
        let getStartedController = storyBoard.instantiateViewController(withIdentifier: "HomeID") as! HomeViewController
        
        self.navigationController?.pushViewController(getStartedController, animated:true) */
    }
    //HomeID
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
