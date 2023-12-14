//
//  OrderSimViewController.swift
//  basic2
//
//  Created by Adam Khan on 12/12/23.
//

import UIKit

class OrderSimViewController: UIViewController {

    @IBOutlet weak var label2Outlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        label2Outlet.text = "Where would you like your \nNew Sim delivered?"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButtonClicked(_ sender: UIButton) {
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
