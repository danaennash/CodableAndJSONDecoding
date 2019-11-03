//
//  ViewerViewController.swift
//  CodeableAndJSONDecoding
//
//  Created by Danae N Nash on 11/04/19.
//  Copyright © 2019 Danae N Nash. All rights reserved.
//

import UIKit

class ViewerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let jsonFilename = "inventory"
    
    @IBOutlet weak var jsonTableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "viewCell", for: indexPath)
        if let cell = cell as? ViewerTableViewCell {
            cell.idLabel.text = "ID: " + String(items[indexPath.row].id)
            cell.titleLabel.text = "Title: " + items[indexPath.row].title
            cell.catLabel.text = "Category: " + items[indexPath.row].category
            cell.priceLabel.text = "Price: $" + String(items[indexPath.row].price)
            cell.stockLabel.text = "In stock: " + String(items[indexPath.row].stockedQuantity)
        }
        return cell
    }
    
    var items = [Product]()
    
    override func viewDidLoad() {
        if let inv = InventoryLoader.load(jsonFilename: jsonFilename){
            for product in inv.products{
                items.append(product)
            }
            jsonTableView.reloadData()
        }else{
            print("Failed to read JSON")
        }

    }
    
}
