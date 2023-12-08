//
//  OptionViewController.swift
//  basic2
//
//  Created by Adam Khan on 12/6/23.
//

import UIKit

class OptionViewController: UIViewController {
    
    
    
    @IBOutlet weak var profilePictureOutlet: UIImageView!
    
    
    @IBOutlet weak var hiNameOutler: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        hiNameOutler.text =  "Hi, Marky"
        
        profilePictureOutlet.layer.cornerRadius = profilePictureOutlet.frame.height / 2
        
        
    }

 
        
}
