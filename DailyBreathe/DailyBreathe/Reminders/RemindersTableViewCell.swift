//
//  RemindersTableViewCell.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 28/11/21.
//

import UIKit

class RemindersTableViewCell: UITableViewCell {

    
    @IBOutlet var lbltxt: UILabel!
    @IBOutlet var lblTime: UILabel!
    @IBOutlet var lblDay: UILabel!
    @IBOutlet var onSwitch: UISwitch!

    @IBOutlet var viewReminder: UIView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
