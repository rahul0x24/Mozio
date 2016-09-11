//
//  PatientTableViewCell.swift
//  Mozio
//
//  Created by Rahul Katariya on 11/09/16.
//  Copyright © 2016 Rahul Katariya. All rights reserved.
//

import UIKit

class PatientTableViewCell: UITableViewCell {
    
    var patient: Patient! {
        didSet {
            if let p = patient {
                nameLabel.text = "\(p.name), \(p.age) years \(p.genderRaw) \nDrugs - \(p.useDrugs.description)  \nMigraines - \(p.hasMigranes.description)"
                let tsp = ToddSyndromeProbabilty.checkPatient(p)
                toddSyndromePercentageLabel.text = "\(tsp.calculatePercentage())% chances of having Todd's Syndrome"
            }
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var toddSyndromePercentageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
