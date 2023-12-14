//
//  TopUpScreenViewController.swift
//  basic1
//
//  Created by Adam Khan on 11/30/23.
//

import UIKit

class TopUpScreenViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    
    var prices : [String] = ["£2.5", "£5", "£10", "£15", "£20", "£25","£30"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionViewOutlet.register(UINib(nibName: "TopUpCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
       
        
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        prices.count
    }
    
    /*func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    } */
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TopUpCollectionVIewCellController
        
        cell.priceLabelOutlet.text = prices[indexPath.row]
        
        /*
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "mycellxib") as! NewTableViewCell
        cell.imageOutlet.image = UIImage(named: "talkhome")
        cell.dateLabelOutlet?.text = obj[indexPath.row].dates
        cell.subjectLabelOutelet?.text = obj[indexPath.row].subject
        cell.messageLabelOutlet?.text = obj[indexPath.row].message
        return  cell */
        
        return cell
    }
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
        {
            let width  = (view.frame.width-50)/2
            return CGSize(width: width, height: width/1.8)
        }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        for i in prices.indices {
                let cellIndexPath = IndexPath(item: i, section: indexPath.section)
                let cell = collectionView.cellForItem(at: cellIndexPath) as! TopUpCollectionVIewCellController
                cell.choosenSymbolOutlet.isHidden = true
            cell.blueSelectedBoarderOutlet.isHidden = true
                
            }
        
        let cell = collectionView.cellForItem(at: indexPath) as! TopUpCollectionVIewCellController
        cell.choosenSymbolOutlet.isHidden = !cell.choosenSymbolOutlet.isHidden
        cell.blueSelectedBoarderOutlet.isHidden = !cell.blueSelectedBoarderOutlet.isHidden 
        
    }
    
        
    @IBAction func ContinueButton(_ sender: UIButton) {
        
        let paymentMethod = self.storyboard?.instantiateViewController(withIdentifier: "paymentMethodID") as! PaymentMethodViewController
        self.navigationController?.pushViewController(paymentMethod, animated: true)
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
