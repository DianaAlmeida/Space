//
//  ViewController.swift
//  SpaceX
//
//  Created by Diana Almeida on 11/10/2022.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var titleCompanyLabel: UILabel!
    @IBOutlet weak var infoCompanyLabel: UILabel!
    @IBOutlet weak var launchesTitleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SpaceX"
        let nib = UINib(nibName: "LaunchTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "LaunchTableViewCell")
        
        fillCompanyInformation()
    }
    
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LaunchTableViewCell", for: indexPath) as! LaunchTableViewCell
        return cell
    }

    func fillCompanyInformation() {
        self.titleCompanyLabel.text = "COMPANY"
        self.infoCompanyLabel.text = "%@ was founded by %@ in %@. It has now %@ employees, %@ launch sites, and is valued at USD %@"
        self.launchesTitleLabel.text = "LAUNCHES"
    }
}



