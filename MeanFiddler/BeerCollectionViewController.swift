//
//  BeerCollectionViewController.swift
//  MeanFiddler
//
//  Created by Marx, Brian on 8/14/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import UIKit

private let rid = "beer"

class BeerCollectionViewController: UICollectionViewController {

    var beerList = [Beer]()
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.backgroundColor = .yellow
        populateBeers()
        
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
        return beerList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: rid, for: indexPath)
        cell.backgroundColor = color
        let beerLabel = cell.viewWithTag(10) as! UILabel
        beerLabel.text = beerList[indexPath.item].name
        let beerPrice = cell.viewWithTag(12) as! UILabel
        beerPrice.text = String(beerList[indexPath.item].price)
        let breweryLabel = cell.viewWithTag(11) as! UILabel
        breweryLabel.text = beerList[indexPath.item].brewery
        
        return cell
    }
    
    func populateBeers() {
        
        for i in 0...15 {
            var beer = Beer()
            beer.name = "Beer #\(i)"
            beer.brewery = "Brewery #\(i)"
            beer.price = Double(i)
            beer.description = "Description #\(i)"
            beerList.append(beer)
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
