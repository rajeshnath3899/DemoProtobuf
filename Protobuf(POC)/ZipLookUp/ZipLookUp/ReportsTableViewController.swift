//
//  ReportsTableViewController.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 29/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import UIKit


class ReportsTableViewController: UITableViewController {
    
    let observations = CaptureObservations.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell: ReportInfoTableViewCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifiers.Reports, for: indexPath) as? ReportInfoTableViewCell else {
            
            fatalError("ReportInfoTableViewCell not in tableview")
        }
        
        // Configure the cell...
        
        cell.dataFormatValueLabel.text = observations.capturedData?.format
        cell.sizeValueLabel.text = observations.capturedData?.dataSize
        cell.timeValueLabel.text = observations.capturedTime?.timeInterVal
        
        return cell
    }
}
