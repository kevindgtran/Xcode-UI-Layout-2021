//
//  CelebrityTableViewCell.swift
//  Celebrities_API_TableView
//
//  Created by Kevin Tran on 3/26/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class CelebrityTableViewCell: UITableViewCell {

    @IBOutlet weak var CelebrityImage: UIImageView!
    @IBOutlet weak var CelebrityName: UILabel!
    @IBOutlet weak var CelebrityDob: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
