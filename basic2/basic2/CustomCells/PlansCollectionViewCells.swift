//
//  PlansCollectionViewCells.swift
//  basic2
//
//  Created by Adam Khan on 12/13/23.
//

import UIKit

class PlansCollectionViewCells: UICollectionViewCell {

    
    
    @IBOutlet weak var planNameOutlet: UILabel!
    
    @IBOutlet weak var priceLabelOutlet: UILabel!
    
    
    @IBOutlet weak var dataViewOutlet: UIView!
    
    @IBOutlet weak var callViewOutlet: UIView!
    
    @IBOutlet weak var monthlyDataUsage: UILabel!
    @IBOutlet weak var messageViewOutlet: UIView!
    
    @IBOutlet weak var singleDataViewOutlet: UIView!
    
    
    @IBOutlet weak var bonusViewOutlet: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
