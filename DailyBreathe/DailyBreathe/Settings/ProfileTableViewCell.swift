//
//  ProfileTableViewCell.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 27/11/21.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var btnReminder:UIButton!
    @IBOutlet weak var lblName:UILabel!
    @IBOutlet var imgCircle: UIImageView!
    @IBOutlet var lblTime:UILabel!
    @IBOutlet var lblText:UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
