//
//  LaunchTableViewCell.swift
//  SpaceX
//
//  Created by Diana Almeida on 23/10/2022.
//

import UIKit

class LaunchTableViewCell: UITableViewCell {

    @IBOutlet weak var missionImage: UIImageView!
    @IBOutlet weak var missionNameLabel: UILabel!
    @IBOutlet weak var dateMissionLabel: UILabel!
    @IBOutlet weak var rocketNameLabel: UILabel!
    @IBOutlet weak var DaysOfMissionLabel: UILabel!
    @IBOutlet weak var lauchSuccessfulImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
