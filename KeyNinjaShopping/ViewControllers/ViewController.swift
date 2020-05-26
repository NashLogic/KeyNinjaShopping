//
//  ViewController.swift
//  KeyNinjaShopping
//
//  Created by Nicholas Glover on 25/5/20.
//  Copyright © 2020 Nicholas Glover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var HeaderStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let url = URL(string: "https://keyninja-internal.azurewebsites.net/api/product") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    let jsonDecoder = JSONDecoder()
                    do {
                        let parsedJSON = try jsonDecoder.decode(DataItems.self, from: data)
                        
                        for item in parsedJSON.data {
                            print(item.displayName)
                            print(item.cost)
                        }
                    } catch {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    
    

    
    
    
//    extension ListPasswordsViewController: UITableViewDataSource, UITableViewDelegate {
//        // how many rows do we want to display?
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return passwordList.count
//        }
//
//        // this is each individual cell
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let individualCell = passwordList[indexPath.row]
//
//            let passwordCell = tableView.dequeueReusableCell(withIdentifier: "PasswordCell", for: indexPath) as! PasswordCell
//
//            passwordCell.setPassword(passwordRow: individualCell)
//
//            return passwordCell
//        }
//    }
    

}

