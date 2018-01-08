//
//  ViewController.swift
//  ScrollProject
//
//  Created by Humberto Vieira on 08/01/18.
//  Copyright © 2018 Humberto Vieira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let list = ["GETULIO", "GUS", "RAMON", "TOPPEN", "TOPPER",
                "GETULIO", "GUS", "RAMON", "TOPPEN", "TOPPER",
                "GETULIO", "GUS", "RAMON", "TOPPEN", "TOPPER"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 90
        self.tableView.tableFooterView = UIView()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.view.layoutIfNeeded()
        self.tableView.layoutIfNeeded()
        self.view.frame.size.height = (
            self.view.frame.height - self.tableView.frame.height
            ) + (
                self.tableView.contentSize.height - self.tableView.frame.height
        )
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath)
        
//        if cell == nil {
//            cell = UITableViewCell(style: .default, reuseIdentifier: "cellid")
//        }
        
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
}

