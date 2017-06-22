//
//  SettingsTableViewController.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 29/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    @IBOutlet weak var dataFormatSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let state: Bool = SwitchSetting.fetchSetting()
        dataFormatSwitch.setOn(state, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = false
        
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
        return 2
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func done(_ sender: Any) {
        
        if dataFormatSwitch.isOn {
            
            print("On")
            SwitchSetting.saveSetting(state: true)
            
        } else {
            
            print("Off")
            SwitchSetting.saveSetting(state: false)
        }
        self.dismiss(animated: true, completion: nil)
    }
    
}
