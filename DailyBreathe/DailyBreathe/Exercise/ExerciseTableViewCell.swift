//
//  ExerciseTableViewCell.swift
//  DailyBreathe
//
//  Created by JENIL BHADJA on 21/11/21.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {
    
    @IBOutlet var imgName: UIImageView!
    @IBOutlet var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
