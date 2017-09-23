//
//  calViewController.swift
//  homeworkHelper
//
//  Created by Gifton Okoronkwo on 9/23/17.
//  Copyright © 2017 Gifton Okoronkwo. All rights reserved.
//

import UIKit
class calViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //collectionView Work
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return daysOfWeek.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "calCell"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! calCollectionViewCell
        
        switch daysOfWeek[indexPath.row]{
        case("Monday") :
            cell.layer.backgroundColor = UIColor(red:0.36, green:0.39, blue:0.60, alpha:1.0).cgColor
        case("Tuesday") :
            cell.layer.backgroundColor = UIColor(red:0.30, green:0.39, blue:0.61, alpha:1.0).cgColor
            
        case("Wednesday") :
            cell.layer.backgroundColor = UIColor(red:0.36, green:0.60, blue:0.55, alpha:1.0).cgColor
            
        case("Thursday") :
            cell.layer.backgroundColor = UIColor(red:0.60, green:0.45, blue:0.46, alpha:1.0).cgColor
            
        case("Friday") :
            cell.layer.backgroundColor = UIColor(red:0.41, green:0.45, blue:0.75, alpha:1.0).cgColor
            
        default :
            cell.layer.backgroundColor = UIColor(red:0.60, green:0.56, blue:0.54, alpha:1.0).cgColor
        }
        
        //style
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
