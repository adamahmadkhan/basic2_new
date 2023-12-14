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
    @IBOutlet weak var sliderImageOutlet: UIImageView!
    @IBOutlet weak var ImageSliderOutlet: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        hiNameOutler.text =  "Hi, Marky"
        
        profilePictureOutlet.layer.cornerRadius = profilePictureOutlet.frame.height / 2
        
        ImageSliderOutlet.currentPage = 0
    }

    @IBAction func PageSliderValueChange(_ sender: Any) {
        if(ImageSliderOutlet.currentPage == 1){
            sliderImageOutlet.image = UIImage(named: "image1")
        }
        if(ImageSliderOutlet.currentPage == 0){
            sliderImageOutlet.image = UIImage(named: "image2")
        }
    }
    
    
    
    
}
