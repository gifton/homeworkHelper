//
//  ViewController.swift
//  homeworkHelper
//
//  Created by Gifton Okoronkwo on 9/20/17.
//  Copyright © 2017 Gifton Okoronkwo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var calClass:[calendar] = [calendar(day: "Monday", className: "Physics", time: "3:30", room: "224B"),
                               calendar(day: "Monday", className: "Math", time: "3:30", room: "224B"),
                               calendar(day: "Tuesday", className: "Physics", time: "3:30", room: "224B"),
                               calendar(day: "Tuesday", className: "Math", time: "3:30", room: "224B"),
                               calendar(day: "Wednesday", className: "Physics", time: "3:30", room: "224B"),
                               calendar(day: "Wednesday", className: "Math", time: "3:30", room: "224B"),
                               calendar(day: "Thursday", className: "Physics", time: "3:30", room: "224B"),
                               calendar(day: "Thursday", className: "Math", time: "3:30", room: "224B"),
                               calendar(day: "Friday", className: "Physics", time: "3:30", room: "224B"),
                               calendar(day: "Friday", className: "Math", time: "3:30", room: "224B"),]
    var days = ["Monday", "Tuesday", "Wednesday", "Thursday","Friday"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //calendar scroll view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdentifier = "weekCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        
        switch days[indexPath.row]{
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
        
        
        return cell
    }
}

