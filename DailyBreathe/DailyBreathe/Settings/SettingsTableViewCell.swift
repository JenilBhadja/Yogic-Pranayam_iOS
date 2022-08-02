//
//  SettingsTableViewCell.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 27/11/21.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblText:UILabel!
    @IBOutlet weak var btnShareApp:UIButton!
    @IBOutlet weak var btnRateApp:UIButton!
    @IBOutlet weak var btnPrivacyPolicy:UIButton!
    @IBOutlet weak var btnContactUS:UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
