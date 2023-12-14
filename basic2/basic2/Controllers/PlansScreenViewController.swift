//
//  PlansScreenViewController.swift
//  basic2
//
//  Created by Adam Khan on 12/12/23.
//

import UIKit

class PlansScreenViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    var monthlyPlansNames = ["Starter Plus","Basic Plus","Blue Plus","Prime Plus","Super Plus"]
    var monthlyPriceTags = ["£5","£8","£10","£12","£15"]
    var monthlyDataUsage = ["4GB","8GB","12GB","15GB","20GB"]
    
    
    
    var dataOnlyPlansNames = ["BOLT ON","BOLT ON","BOLT ON","BOLT ON","BOLT ON"]
    var dataOnlyDataUsage = ["1GB","2GB","3GB","4GB","5GB"]
    
    @IBOutlet weak var MonthlyButtonSelected: NSLayoutConstraint!
    
    @IBOutlet weak var month12sButtonSelected: NSLayoutConstraint!
    
    @IBOutlet weak var payGButtonSelected: NSLayoutConstraint!
    
    @IBOutlet weak var dataOnly: NSLayoutConstraint!
    @IBOutlet weak var monthlyViewOutlet: UIView!
    @IBOutlet weak var T12MonthsViewOutlet: UIView!
    @IBOutlet weak var payGViewOutlet: UIView!
    @IBOutlet weak var dataOnlyViewOutlet: UIView!
    
    @IBOutlet weak var monthlyCollectionView: UICollectionView!
    
    @IBOutlet weak var dataOnlyCollectionViewOutlet: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.monthlyCollectionView.register(UINib(nibName: "PlansCollectionViewCells", bundle: nil), forCellWithReuseIdentifier: "planscellid")
        
       
        self.dataOnlyCollectionViewOutlet.register(UINib(nibName: "PlansCollectionViewCells", bundle: nil), forCellWithReuseIdentifier: "planscellid")
        
        
    }
    
    @IBAction func MonthlyTabClicked(_ sender: UIButton) {
        
        /*
         MonthlyButtonSelected.constant = 0.0
         month12sButtonSelected.constant = 0.0
         payGButtonSelected.constant = 0.0
         dataOnly.constant = 0.0 */
        
        monthlyViewOutlet.isHidden = true
        T12MonthsViewOutlet.isHidden = true
        payGViewOutlet.isHidden = true
        dataOnlyViewOutlet.isHidden = true
        
        monthlyViewOutlet.isHidden = false
        
        // MonthlyButtonSelected.constant = 5.0
        
        
        
    }
    
    
    @IBAction func T12MonthsTabClicked(_ sender: UIButton) {
        
        /*
         MonthlyButtonSelected.constant = 0.0
         month12sButtonSelected.constant = 0.0
         payGButtonSelected.constant = 0.0
         dataOnly.constant = 0.0
         */
        monthlyViewOutlet.isHidden = true
        T12MonthsViewOutlet.isHidden = true
        payGViewOutlet.isHidden = true
        dataOnlyViewOutlet.isHidden = true
        
        
        T12MonthsViewOutlet.isHidden = false
        
        //month12sButtonSelected.constant = 5.0
        
    }
    
    
    @IBAction func PayGtabclick(_ sender: UIButton) {
        /*
         MonthlyButtonSelected.constant = 0.0
         month12sButtonSelected.constant = 0.0
         payGButtonSelected.constant = 0.0
         dataOnly.constant = 0.0
         */
        monthlyViewOutlet.isHidden = true
        T12MonthsViewOutlet.isHidden = true
        payGViewOutlet.isHidden = true
        dataOnlyViewOutlet.isHidden = true
        
        payGViewOutlet.isHidden = false
        
        //payGButtonSelected.constant = 5.0
    }
    
    
    @IBAction func DataOnlyTabClicked(_ sender: UIButton) {
        
        /*
         MonthlyButtonSelected.constant = 0.0
         month12sButtonSelected.constant = 0.0
         payGButtonSelected.constant = 0.0
         dataOnly.constant = 0.0
         */
        monthlyViewOutlet.isHidden = true
        T12MonthsViewOutlet.isHidden = true
        payGViewOutlet.isHidden = true
        dataOnlyViewOutlet.isHidden = true
        
        dataOnlyViewOutlet.isHidden = false
        
        // dataOnly.constant = 5.0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if(collectionView == monthlyCollectionView)
        {
            return monthlyPlansNames.count
        }
        else{
            return dataOnlyPlansNames.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if(collectionView == monthlyCollectionView)
        {
            let cell = monthlyCollectionView.dequeueReusableCell(withReuseIdentifier: "planscellid", for: indexPath) as! PlansCollectionViewCells
            cell.singleDataViewOutlet.isHidden = true
            cell.bonusViewOutlet.isHidden = true
            
            cell.planNameOutlet.text = monthlyPlansNames[indexPath.row]
            cell.priceLabelOutlet.text = monthlyPriceTags[indexPath.row]
            cell.monthlyDataUsage.text = monthlyDataUsage[indexPath.row]
            return cell
        }
        let cell = dataOnlyCollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "planscellid", for: indexPath) as! PlansCollectionViewCells
        cell.singleDataViewOutlet.isHidden = false
        cell.dataViewOutlet.isHidden = true
        cell.bonusViewOutlet.isHidden = true
        cell.messageViewOutlet.isHidden = true
        cell.callViewOutlet.isHidden = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        return CGSize(width: view.frame.width-30, height: 250)
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
