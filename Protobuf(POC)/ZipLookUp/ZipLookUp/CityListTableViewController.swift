//
//  CityListTableViewController.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 23/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import UIKit

class CityListTableViewController: UITableViewController {
    
    var zipInfoList : [ZipInfo]?
    
    @IBOutlet weak var settingsButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        addSettingsButton()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getZipInfo()
        
       /* let zipInfo1 = ZipInfo.with { field in
            
            field.id = 1000
            field.city = "AGAWAM"
            field.state = "MA"
            field.population = 15338
            field.location = [-72.644567,45.89000]
            
        }
        
        let zipInfo2 = ZipInfo.with { field in
            
            field.id = 1002
            field.city = "CUSHMAN"
            field.state = "MA"
            field.population = 36963
            field.location = [-72.51565,42.3777017]
            
        }
        
        self.zipInfoList = [zipInfo1,zipInfo2] */
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
        
        guard let rows = zipInfoList?.count  else {
            
            return 0
        }
        
        return rows
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure the cell...
        
        guard let cell: ZipInfoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as? ZipInfoTableViewCell else {
            
            fatalError("ZipInfoTableViewCell not in tableview")
            
        }
        
        guard let cityName = self.zipInfoList?[indexPath.row].city, let state = self.zipInfoList?[indexPath.row].state , let zipCode = self.zipInfoList?[indexPath.row].id , let  population = self.zipInfoList?[indexPath.row].population  else {
            
            // Configure the cell...
            
            return cell
            
        }
        
        cell.cityNameTextLabel.text = cityName
        cell.stateNameTextLabel.text = state
        cell.zipCodeTextLabel.text = String(zipCode)
        cell.populationTextLabel.text = String(population)
        return cell
    }
    
    
    var currentWindow: UIWindow? {
        
        return UIApplication.shared.windows.first
        
    }
    
    
    func getZipInfo() {
        
        guard let currentWindow = currentWindow else {
            print("failed in getting the first window for presenting indicator view!")
            return
        }
        
        let indicator = ActivityIndicatorView(frame: currentWindow.frame)
        indicator.showActivity()
        
        Service.getAllZipCodeInfo { (response) in
            
            DispatchQueue.main.async {
                indicator.hideActivity()
            }
            
            
            switch(response) {
                
            case .success(let data) :
                
                let places: Places = data
                
                self.zipInfoList = places.zipInfoList
                
                DispatchQueue.main.async() {
                    
                    self.tableView.reloadData()
                    
                }
                
            case .error(let errorString) :
                
                print(errorString)
                
            }
        }
    }
    
    
    func addSettingsButton() {
        
        self.settingsButton.title = NSString(string: "\u{2699}\u{0000FE0E}") as String
        let font = UIFont.systemFont(ofSize: 28)
        
        let attributes = [NSFontAttributeName : font]
        settingsButton.setTitleTextAttributes(attributes, for: .normal)
        
    }
    
    
}





