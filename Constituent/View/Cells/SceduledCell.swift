//
//  SceduledCell.swift
//  Constituent
//
//  Created by HappysanziMac on 15/06/21.
//  Copyright © 2021 HappySanzTech. All rights reserved.
//

import UIKit

class SceduledCell: UITableViewCell {

    @IBOutlet var meetingTitle: UILabel!
    @IBOutlet var meetingdate: UILabel!
//    @IBOutlet var meetingStatus: SideRoundedCornerLabel!
//    @IBOutlet var titleImageGroup: UIImageView!
    @IBOutlet var cretaeDate: UILabel!
    @IBOutlet var meetingOnDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
