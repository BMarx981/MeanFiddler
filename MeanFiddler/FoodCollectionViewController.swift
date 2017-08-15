//
//  FoodCollectionViewController.swift
//  MeanFiddler
//
//  Created by Marx, Brian on 8/14/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import UIKit

//hexString: "#df560b"
let r = CGFloat(233)/255
let g = CGFloat(86)/255
let b = CGFloat(11)/255
let a = CGFloat(1)
let color = UIColor(red: r, green: g, blue: b, alpha: a)

private let reuseIdentifier = "food"

class FoodCollectionViewController: UICollectionViewController {

    var foods = [Food]()
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = .yellow
        populateFood()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(foods.count)
        return foods.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        cell.backgroundColor = color
        let nameLabel = cell.viewWithTag(100) as! UILabel
        nameLabel.text = foods[indexPath.item].name
        let priceLabel = cell.viewWithTag(200) as! UILabel
        priceLabel.text = String(foods[indexPath.item].price)
        let descriptionLabel = cell.viewWithTag(300) as! UILabel
        descriptionLabel.text = foods[indexPath.item].description
        
        return cell
    }
    
    func populateFood() {
        for i in 0...15 {
            var food = Food()
            food.name = "Food #\(i)"
            food.price = Double(i)
            food.description = "Desription #\(i)"
            foods.append(food)
        }
    
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

