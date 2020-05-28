//
//  ShoppingViewController.swift
//  KeyNinjaShopping
//
//  Created by Nicholas Glover on 25/5/20.
//  Copyright © 2020 Nicholas Glover. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backgroundHeader: UIView!
    
    var jsonExtractionDataItems = [DataItems]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        tableView.rowHeight = 200;
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        if let url = URL(string: "https://keyninja-internal.azurewebsites.net/api/product") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    let jsonDecoder = JSONDecoder()
                    do {
                        self.jsonExtractionDataItems = [try jsonDecoder.decode(DataItems.self, from: data)]
                        

                        DispatchQueue.main.async {
                           self.tableView.reloadData()
                        }
                        
                    } catch {
                        print(error)
                    }
                }
            }.resume()
        }

        

    }
    
         
}

extension ShoppingViewController: UITableViewDataSource, UITableViewDelegate {
    // how many rows do we want to display?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (jsonExtractionDataItems.count != 0)
        {
            return jsonExtractionDataItems[0].count()
        }
        
        return jsonExtractionDataItems.count
    }

    // this is each individual cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCells
        
        let item = jsonExtractionDataItems[0]

        cell.setItems(item: item.data[indexPath.row])
        
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 30
        cell.layer.borderWidth = 0.5
        cell.layer.shadowOffset = CGSize(width: -1, height: 1)
        let borderColor: UIColor = .gray
        cell.layer.borderColor = borderColor.cgColor

        return cell
    }
}
